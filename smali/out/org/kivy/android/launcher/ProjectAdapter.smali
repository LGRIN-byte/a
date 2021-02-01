.class public Lorg/kivy/android/launcher/ProjectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/kivy/android/launcher/Project;",
        ">;"
    }
.end annotation


# instance fields
.field private resourceManager:Lorg/renpy/android/ResourceManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "context"    # Landroid/app/Activity;

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 18
    new-instance v0, Lorg/renpy/android/ResourceManager;

    invoke-direct {v0, p1}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 19
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {p0, p1}, Lorg/kivy/android/launcher/ProjectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kivy/android/launcher/Project;

    .line 24
    .local v0, "p":Lorg/kivy/android/launcher/Project;
    iget-object v1, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v2, "chooser_item"

    invoke-virtual {v1, v2}, Lorg/renpy/android/ResourceManager;->inflateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v3, "title"

    invoke-virtual {v2, v1, v3}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 26
    .local v2, "title":Landroid/widget/TextView;
    iget-object v3, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v4, "author"

    invoke-virtual {v3, v1, v4}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 27
    .local v3, "author":Landroid/widget/TextView;
    iget-object v4, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v5, "icon"

    invoke-virtual {v4, v1, v5}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 29
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v5, v0, Lorg/kivy/android/launcher/Project;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v5, v0, Lorg/kivy/android/launcher/Project;->author:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v5, v0, Lorg/kivy/android/launcher/Project;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    return-object v1
.end method
