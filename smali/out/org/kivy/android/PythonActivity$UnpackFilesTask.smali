.class Lorg/kivy/android/PythonActivity$UnpackFilesTask;
.super Landroid/os/AsyncTask;
.source "PythonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kivy/android/PythonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpackFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kivy/android/PythonActivity;


# direct methods
.method private constructor <init>(Lorg/kivy/android/PythonActivity;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/kivy/android/PythonActivity;Lorg/kivy/android/PythonActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/kivy/android/PythonActivity;
    .param p2, "x1"    # Lorg/kivy/android/PythonActivity$1;

    .line 99
    invoke-direct {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;-><init>(Lorg/kivy/android/PythonActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 99
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "app_root_file":Ljava/io/File;
    const-string v1, "PythonActivity"

    const-string v2, "Ready to unpack"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Lorg/kivy/android/PythonActivityUtil;

    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    iget-object v3, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-static {v3}, Lorg/kivy/android/PythonActivity;->access$100(Lorg/kivy/android/PythonActivity;)Lorg/renpy/android/ResourceManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/kivy/android/PythonActivityUtil;-><init>(Landroid/app/Activity;Lorg/renpy/android/ResourceManager;)V

    .line 105
    .local v1, "pythonActivityUtil":Lorg/kivy/android/PythonActivityUtil;
    const-string v2, "private"

    invoke-virtual {v1, v2, v0}, Lorg/kivy/android/PythonActivityUtil;->unpackData(Ljava/lang/String;Ljava/io/File;)V

    .line 106
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 99
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/String;

    .line 118
    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {v0}, Lorg/kivy/android/PythonActivity;->access$200(Lorg/kivy/android/PythonActivity;)V

    .line 124
    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->showLoadingScreen()V

    .line 126
    iget-object v0, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "app_root_dir":Ljava/lang/String;
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    .line 128
    invoke-virtual {v1}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "org.kivy.LAUNCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 129
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v3}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "path":Ljava/io/File;
    invoke-static {v1}, Lorg/kivy/android/launcher/Project;->scanDirectory(Ljava/io/File;)Lorg/kivy/android/launcher/Project;

    move-result-object v3

    .line 132
    .local v3, "p":Lorg/kivy/android/launcher/Project;
    iget-object v4, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    iget-object v5, v3, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "entry_point":Ljava/lang/String;
    const-string v5, "ANDROID_ENTRYPOINT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v5, "ANDROID_ARGUMENT"

    iget-object v6, v3, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v5, "ANDROID_APP_PATH"

    iget-object v6, v3, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz v3, :cond_91

    .line 138
    iget-boolean v5, v3, Lorg/kivy/android/launcher/Project;->landscape:Z

    if-eqz v5, :cond_8c

    .line 139
    iget-object v5, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/kivy/android/PythonActivity;->setRequestedOrientation(I)V

    goto :goto_91

    .line 141
    :cond_8c
    iget-object v5, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v5, v2}, Lorg/kivy/android/PythonActivity;->setRequestedOrientation(I)V

    .line 147
    :cond_91
    :goto_91
    :try_start_91
    new-instance v5, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    const-string v7, ".launch"

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 148
    .local v5, "f":Ljava/io/FileWriter;
    const-string v6, "started"

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a5} :catch_a6

    .line 152
    .end local v5    # "f":Ljava/io/FileWriter;
    goto :goto_a7

    .line 150
    :catch_a6
    move-exception v5

    .line 153
    .end local v1    # "path":Ljava/io/File;
    .end local v3    # "p":Lorg/kivy/android/launcher/Project;
    .end local v4    # "entry_point":Ljava/lang/String;
    :goto_a7
    goto :goto_bd

    .line 154
    :cond_a8
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1, v0}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "entry_point":Ljava/lang/String;
    const-string v3, "ANDROID_ENTRYPOINT"

    invoke-static {v3, v1}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "ANDROID_ARGUMENT"

    invoke-static {v3, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "ANDROID_APP_PATH"

    invoke-static {v3, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "entry_point":Ljava/lang/String;
    :goto_bd
    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "mFilesDirectory":Ljava/lang/String;
    const-string v3, "PythonActivity"

    const-string v4, "Setting env vars for start.c and Python to use"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v3, "ANDROID_PRIVATE"

    invoke-static {v3, v1}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "ANDROID_UNPACK"

    invoke-static {v3, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "PYTHONHOME"

    invoke-static {v3, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "PYTHONPATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v3, "PYTHONOPTIMIZE"

    const-string v4, "2"

    invoke-static {v3, v4}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :try_start_102
    const-string v3, "PythonActivity"

    const-string v4, "Access to our meta-data..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v3, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-object v4, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v4}, Lorg/kivy/android/PythonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 171
    invoke-virtual {v5}, Lorg/kivy/android/PythonActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 170
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v3, v4}, Lorg/kivy/android/PythonActivity;->access$302(Lorg/kivy/android/PythonActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 173
    sget-object v3, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lorg/kivy/android/PythonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 174
    .local v3, "pm":Landroid/os/PowerManager;
    sget-object v4, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {v4}, Lorg/kivy/android/PythonActivity;->access$300(Lorg/kivy/android/PythonActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "wakelock"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_150

    .line 175
    sget-object v4, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const/16 v5, 0xa

    const-string v6, "Screen On"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/kivy/android/PythonActivity;->access$402(Lorg/kivy/android/PythonActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 176
    sget-object v4, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {v4}, Lorg/kivy/android/PythonActivity;->access$400(Lorg/kivy/android/PythonActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 178
    :cond_150
    sget-object v4, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-static {v4}, Lorg/kivy/android/PythonActivity;->access$300(Lorg/kivy/android/PythonActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "surface.transparent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_179

    .line 179
    const-string v4, "PythonActivity"

    const-string v5, "Surface will be transparent."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lorg/kivy/android/PythonActivity;->getSurface()Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 181
    invoke-static {}, Lorg/kivy/android/PythonActivity;->getSurface()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v4, -0x2

    invoke-interface {v2, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_180

    .line 183
    :cond_179
    const-string v2, "PythonActivity"

    const-string v4, "Surface will NOT be transparent"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_102 .. :try_end_180} :catch_181

    .line 186
    .end local v3    # "pm":Landroid/os/PowerManager;
    :goto_180
    goto :goto_182

    .line 185
    :catch_181
    move-exception v2

    .line 189
    :goto_182
    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-boolean v2, Lorg/kivy/android/PythonActivity;->mHasFocus:Z

    if-eqz v2, :cond_1a5

    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-object v2, Lorg/kivy/android/PythonActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v3, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    if-eq v2, v3, :cond_1a0

    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    sget-object v2, Lorg/kivy/android/PythonActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v3, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v2, v3, :cond_1a5

    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 195
    invoke-static {}, Lorg/kivy/android/PythonActivity;->access$500()Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_1a5

    .line 199
    :cond_1a0
    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->onResume()V

    .line 201
    :cond_1a5
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 205
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 99
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Void;

    .line 209
    return-void
.end method
