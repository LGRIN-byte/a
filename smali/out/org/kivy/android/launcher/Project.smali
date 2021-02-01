.class public Lorg/kivy/android/launcher/Project;
.super Ljava/lang/Object;
.source "Project.java"


# instance fields
.field author:Ljava/lang/String;

.field public dir:Ljava/lang/String;

.field icon:Landroid/graphics/Bitmap;

.field public landscape:Z

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->title:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->author:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->icon:Landroid/graphics/Bitmap;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/kivy/android/launcher/Project;->landscape:Z

    return-void
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 26
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 27
    :catch_e
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return-object p0
.end method

.method public static scanDirectory(Ljava/io/File;)Lorg/kivy/android/launcher/Project;
    .registers 11
    .param p0, "dir"    # Ljava/io/File;

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 44
    :try_start_d
    new-instance v0, Ljava/io/File;

    const-string v2, "android.txt"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v0, "propfile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 47
    .local v3, "p":Ljava/util/Properties;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 50
    const-string v4, "directory"

    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "directory":Ljava/lang/String;
    if-nez v4, :cond_2d

    .line 53
    return-object v1

    .line 56
    :cond_2d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_32} :catch_34

    move-object p0, v5

    .line 60
    .end local v0    # "propfile":Ljava/io/File;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "p":Ljava/util/Properties;
    .end local v4    # "directory":Ljava/lang/String;
    goto :goto_4b

    .line 58
    :catch_34
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Project"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t open link file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_52

    .line 65
    return-object v1

    .line 71
    :cond_52
    :try_start_52
    new-instance v0, Ljava/io/File;

    const-string v2, "android.txt"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v0, "propfile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .restart local v2    # "in":Ljava/io/FileInputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 74
    .restart local v3    # "p":Ljava/util/Properties;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 78
    const-string v4, "title"

    const-string v5, "Untitled"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/kivy/android/launcher/Project;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "title":Ljava/lang/String;
    const-string v5, "author"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/kivy/android/launcher/Project;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "author":Ljava/lang/String;
    const-string v6, "orientation"

    const-string v7, "portrait"

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "landscape"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 83
    .local v6, "landscape":Z
    new-instance v7, Lorg/kivy/android/launcher/Project;

    invoke-direct {v7}, Lorg/kivy/android/launcher/Project;-><init>()V

    .line 84
    .local v7, "rv":Lorg/kivy/android/launcher/Project;
    iput-object v4, v7, Lorg/kivy/android/launcher/Project;->title:Ljava/lang/String;

    .line 85
    iput-object v5, v7, Lorg/kivy/android/launcher/Project;->author:Ljava/lang/String;

    .line 86
    new-instance v8, Ljava/io/File;

    const-string v9, "icon.png"

    invoke-direct {v8, p0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lorg/kivy/android/launcher/Project;->icon:Landroid/graphics/Bitmap;

    .line 87
    iput-boolean v6, v7, Lorg/kivy/android/launcher/Project;->landscape:Z

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_b1} :catch_b2

    .line 90
    return-object v7

    .line 92
    .end local v0    # "propfile":Ljava/io/File;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "p":Ljava/util/Properties;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "author":Ljava/lang/String;
    .end local v6    # "landscape":Z
    .end local v7    # "rv":Lorg/kivy/android/launcher/Project;
    :catch_b2
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Project"

    const-string v3, "Couldn\'t open android.txt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method
