.class public Lorg/kivy/android/PythonUtil;
.super Ljava/lang/Object;
.source "PythonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pythonutil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "libsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 17
    .local p0, "libsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 19
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 21
    .local v1, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .line 21
    .local v2, "i":I
    :goto_1f
    array-length v3, v0

    if-ge v2, v3, :cond_7e

    .line 22
    aget-object v3, v0, v2

    .line 23
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "name":Ljava/lang/String;
    const-string v5, "pythonutil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " against "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 26
    const-string v5, "pythonutil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " matched file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 30
    .end local v2    # "i":I
    :cond_7e
    return-void
.end method

.method protected static getLibraries(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "libsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "libsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "sqlite3"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 35
    const-string v1, "ffi"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 36
    const-string v1, "png16"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 37
    const-string v1, "ssl.*"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 38
    const-string v1, "crypto.*"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 39
    const-string v1, "SDL2"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 40
    const-string v1, "SDL2_image"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 41
    const-string v1, "SDL2_mixer"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 42
    const-string v1, "SDL2_ttf"

    invoke-static {v0, v1, p0}, Lorg/kivy/android/PythonUtil;->addLibraryIfExists(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/File;)V

    .line 43
    const-string v1, "python3.5m"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "python3.6m"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "python3.7m"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "python3.8m"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-object v0
.end method

.method public static loadLibraries(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .param p0, "filesDir"    # Ljava/io/File;
    .param p1, "libsDir"    # Ljava/io/File;

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "foundPython":Z
    invoke-static {p1}, Lorg/kivy/android/PythonUtil;->getLibraries(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "lib":Ljava/lang/String;
    const-string v3, "pythonutil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_2b
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    const-string v3, "python"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2b .. :try_end_34} :catch_39

    if-eqz v3, :cond_37

    .line 59
    const/4 v0, 0x1

    .line 74
    :cond_37
    nop

    .line 75
    .end local v2    # "lib":Ljava/lang/String;
    goto :goto_9

    .line 61
    .restart local v2    # "lib":Ljava/lang/String;
    :catch_39
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v4, "pythonutil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library loading error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v4, "python3.8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    if-nez v0, :cond_66

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Could not load any libpythonXXX.so"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_66
    const-string v4, "python"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 69
    goto :goto_9

    .line 71
    :cond_6f
    const-string v1, "pythonutil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An UnsatisfiedLinkError occurred loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    throw v3

    .line 77
    .end local v2    # "lib":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_86
    const-string v1, "pythonutil"

    const-string v2, "Loaded everything!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method
