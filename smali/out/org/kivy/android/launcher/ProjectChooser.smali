.class public Lorg/kivy/android/launcher/ProjectChooser;
.super Landroid/app/Activity;
.source "ProjectChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field resourceManager:Lorg/renpy/android/ResourceManager;

.field urlScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 80
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kivy/android/launcher/Project;

    .line 82
    .local v0, "p":Lorg/kivy/android/launcher/Project;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.kivy.LAUNCH"

    iget-object v3, p0, Lorg/kivy/android/launcher/ProjectChooser;->urlScheme:Ljava/lang/String;

    iget-object v4, v0, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    const-string v5, ""

    .line 84
    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/kivy/android/launcher/ProjectChooser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.kivy.android.PythonActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Lorg/kivy/android/launcher/ProjectChooser;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lorg/kivy/android/launcher/ProjectChooser;->finish()V

    .line 89
    return-void
.end method

.method public onStart()V
    .registers 8

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 29
    new-instance v0, Lorg/renpy/android/ResourceManager;

    invoke-direct {v0, p0}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 31
    iget-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "urlScheme"

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->urlScheme:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/kivy/android/launcher/ProjectChooser;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/kivy/android/launcher/ProjectChooser;->urlScheme:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 41
    .local v1, "entries":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 42
    new-array v1, v2, [Ljava/io/File;

    .line 45
    :cond_33
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 48
    new-instance v3, Lorg/kivy/android/launcher/ProjectAdapter;

    invoke-direct {v3, p0}, Lorg/kivy/android/launcher/ProjectAdapter;-><init>(Landroid/app/Activity;)V

    .line 51
    .local v3, "projectAdapter":Lorg/kivy/android/launcher/ProjectAdapter;
    array-length v4, v1

    :goto_3c
    if-ge v2, v4, :cond_4c

    aget-object v5, v1, v2

    .line 52
    .local v5, "d":Ljava/io/File;
    invoke-static {v5}, Lorg/kivy/android/launcher/Project;->scanDirectory(Ljava/io/File;)Lorg/kivy/android/launcher/Project;

    move-result-object v6

    .line 53
    .local v6, "p":Lorg/kivy/android/launcher/Project;
    if-eqz v6, :cond_49

    .line 54
    invoke-virtual {v3, v6}, Lorg/kivy/android/launcher/ProjectAdapter;->add(Ljava/lang/Object;)V

    .line 51
    .end local v5    # "d":Ljava/io/File;
    .end local v6    # "p":Lorg/kivy/android/launcher/Project;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 58
    :cond_4c
    invoke-virtual {v3}, Lorg/kivy/android/launcher/ProjectAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_6e

    .line 60
    iget-object v2, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v4, "project_chooser"

    invoke-virtual {v2, v4}, Lorg/renpy/android/ResourceManager;->inflateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v5, "projectList"

    invoke-virtual {v4, v2, v5}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 63
    .local v4, "l":Landroid/widget/ListView;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    invoke-virtual {p0, v2}, Lorg/kivy/android/launcher/ProjectChooser;->setContentView(Landroid/view/View;)V

    .line 68
    .end local v2    # "v":Landroid/view/View;
    .end local v4    # "l":Landroid/widget/ListView;
    goto :goto_9c

    .line 70
    :cond_6e
    iget-object v2, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v4, "project_empty"

    invoke-virtual {v2, v4}, Lorg/renpy/android/ResourceManager;->inflateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 71
    .restart local v2    # "v":Landroid/view/View;
    iget-object v4, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v5, "emptyText"

    invoke-virtual {v4, v2, v5}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, "emptyText":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No projects are available to launch. Please place a project into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and restart this application. Press the back button to exit."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0, v2}, Lorg/kivy/android/launcher/ProjectChooser;->setContentView(Landroid/view/View;)V

    .line 77
    .end local v2    # "v":Landroid/view/View;
    .end local v4    # "emptyText":Landroid/widget/TextView;
    :goto_9c
    return-void
.end method
