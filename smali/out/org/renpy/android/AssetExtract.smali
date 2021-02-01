.class public Lorg/renpy/android/AssetExtract;
.super Ljava/lang/Object;
.source "AssetExtract.java"


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    .line 29
    return-void
.end method


# virtual methods
.method public extractTar(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 33
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    .line 35
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 36
    .local v1, "assetStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    move-object v3, v2

    .line 39
    .local v3, "tis":Lorg/kamranzafar/jtar/TarInputStream;
    const/4 v4, 0x0

    :try_start_8
    iget-object v5, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 40
    new-instance v5, Lorg/kamranzafar/jtar/TarInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v9, 0x2000

    invoke-direct {v8, v1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v5, v6}, Lorg/kamranzafar/jtar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_e5

    move-object v3, v5

    .line 44
    nop

    .line 47
    :goto_28
    move-object v5, v2

    .line 50
    .local v5, "entry":Lorg/kamranzafar/jtar/TarEntry;
    :try_start_29
    invoke-virtual {v3}, Lorg/kamranzafar/jtar/TarInputStream;->getNextEntry()Lorg/kamranzafar/jtar/TarEntry;

    move-result-object v6
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_dc

    move-object v5, v6

    .line 54
    nop

    .line 56
    if-nez v5, :cond_3c

    .line 57
    nop

    .line 103
    .end local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    :try_start_32
    invoke-virtual {v3}, Lorg/kamranzafar/jtar/TarInputStream;->close()V

    .line 104
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_38} :catch_39

    .line 107
    goto :goto_3a

    .line 105
    :catch_39
    move-exception v2

    .line 109
    :goto_3a
    const/4 v2, 0x1

    return v2

    .line 60
    .restart local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    :cond_3c
    const-string v6, "python"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extracting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 65
    :try_start_5c
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_7c
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_7c} :catch_7d

    .line 66
    goto :goto_28

    :catch_7d
    move-exception v6

    .line 68
    goto :goto_28

    .line 71
    :cond_7f
    const/4 v6, 0x0

    .line 72
    .local v6, "out":Ljava/io/OutputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "path":Ljava/lang/String;
    :try_start_98
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_a2} :catch_a4
    .catch Ljava/lang/SecurityException; {:try_start_98 .. :try_end_a2} :catch_a4

    move-object v6, v8

    .line 76
    goto :goto_a5

    :catch_a4
    move-exception v8

    .line 78
    :goto_a5
    if-nez v6, :cond_be

    .line 79
    const-string v2, "python"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v4

    .line 85
    :cond_be
    :goto_be
    :try_start_be
    invoke-virtual {v3, v0}, Lorg/kamranzafar/jtar/TarInputStream;->read([B)I

    move-result v8

    .line 87
    .local v8, "len":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_cf

    .line 88
    nop

    .line 94
    .end local v8    # "len":I
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 99
    nop

    .line 100
    .end local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "path":Ljava/lang/String;
    goto/16 :goto_28

    .line 91
    .restart local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "len":I
    :cond_cf
    invoke-virtual {v6, v0, v4, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_d2} :catch_d3

    .line 92
    .end local v8    # "len":I
    goto :goto_be

    .line 96
    :catch_d3
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "python"

    const-string v9, "extracting zip"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return v4

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "path":Ljava/lang/String;
    :catch_dc
    move-exception v2

    .line 52
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "python"

    const-string v7, "extracting tar"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return v4

    .line 41
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    :catch_e5
    move-exception v2

    .line 42
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "python"

    const-string v6, "opening up extract tar"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    return v4
.end method
