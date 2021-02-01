.class public Lorg/kivy/android/PythonActivity;
.super Lorg/libsdl/app/SDLActivity;
.source "PythonActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kivy/android/PythonActivity$PermissionsCallback;,
        Lorg/kivy/android/PythonActivity$ActivityResultListener;,
        Lorg/kivy/android/PythonActivity$NewIntentListener;,
        Lorg/kivy/android/PythonActivity$UnpackFilesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PythonActivity"

.field public static mActivity:Lorg/kivy/android/PythonActivity;

.field public static mImageView:Landroid/widget/ImageView;


# instance fields
.field private activityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kivy/android/PythonActivity$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private havePermissionsCallback:Z

.field protected loadingScreenRemovalTimer:Ljava/util/Timer;

.field protected mAppConfirmedActive:Z

.field private mMetaData:Landroid/os/Bundle;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private newIntentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kivy/android/PythonActivity$NewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

.field private resourceManager:Lorg/renpy/android/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 340
    sput-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Lorg/libsdl/app/SDLActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 46
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->mMetaData:Landroid/os/Bundle;

    .line 47
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 228
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    .line 263
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    .line 344
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    .line 542
    iput-boolean v1, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    return-void
.end method

.method public static _do_start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p0, "serviceTitle"    # Ljava/lang/String;
    .param p1, "serviceDescription"    # Ljava/lang/String;
    .param p2, "pythonServiceArgument"    # Ljava/lang/String;
    .param p3, "showForegroundNotification"    # Z

    .line 315
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const-class v2, Lorg/kivy/android/PythonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v0, "serviceIntent":Landroid/content/Intent;
    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "argument":Ljava/lang/String;
    sget-object v2, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "app_root_dir":Ljava/lang/String;
    sget-object v3, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "entry_point":Ljava/lang/String;
    const-string v4, "androidPrivate"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v4, "androidArgument"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v4, "serviceEntrypoint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v4, "pythonName"

    const-string v5, "python"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v4, "pythonHome"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v4, "pythonPath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v4, "serviceStartAsForeground"

    if-eqz p3, :cond_81

    const-string v5, "true"

    goto :goto_83

    :cond_81
    const-string v5, "false"

    :goto_83
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v4, "serviceTitle"

    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v4, "serviceDescription"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v4, "pythonServiceArgument"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    sget-object v4, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v4, v0}, Lorg/kivy/android/PythonActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 332
    return-void
.end method

.method static synthetic access$100(Lorg/kivy/android/PythonActivity;)Lorg/renpy/android/ResourceManager;
    .registers 2
    .param p0, "x0"    # Lorg/kivy/android/PythonActivity;

    .line 40
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/kivy/android/PythonActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/kivy/android/PythonActivity;

    .line 40
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->finishLoad()V

    return-void
.end method

.method static synthetic access$300(Lorg/kivy/android/PythonActivity;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lorg/kivy/android/PythonActivity;

    .line 40
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Lorg/kivy/android/PythonActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lorg/kivy/android/PythonActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 40
    iput-object p1, p0, Lorg/kivy/android/PythonActivity;->mMetaData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lorg/kivy/android/PythonActivity;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lorg/kivy/android/PythonActivity;

    .line 40
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$402(Lorg/kivy/android/PythonActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lorg/kivy/android/PythonActivity;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .line 40
    iput-object p1, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .registers 1

    .line 40
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSDLThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$600()Lorg/libsdl/app/SDLActivity;
    .registers 1

    .line 40
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    return-object v0
.end method

.method static synthetic access$700()Lorg/libsdl/app/SDLActivity;
    .registers 1

    .line 40
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    return-object v0
.end method

.method public static getLayout()Landroid/view/ViewGroup;
    .registers 1

    .line 213
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getSurface()Landroid/view/SurfaceView;
    .registers 1

    .line 217
    sget-object v0, Lorg/kivy/android/PythonActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    return-object v0
.end method

.method public static start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "serviceTitle"    # Ljava/lang/String;
    .param p1, "serviceDescription"    # Ljava/lang/String;
    .param p2, "pythonServiceArgument"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/kivy/android/PythonActivity;->_do_start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    return-void
.end method

.method public static start_service_not_as_foreground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "serviceTitle"    # Ljava/lang/String;
    .param p1, "serviceDescription"    # Ljava/lang/String;
    .param p2, "pythonServiceArgument"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/kivy/android/PythonActivity;->_do_start_service(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    return-void
.end method

.method public static stop_service()V
    .registers 3

    .line 335
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    const-class v2, Lorg/kivy/android/PythonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, "serviceIntent":Landroid/content/Intent;
    sget-object v1, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1, v0}, Lorg/kivy/android/PythonActivity;->stopService(Landroid/content/Intent;)Z

    .line 337
    return-void
.end method


# virtual methods
.method public addPermissionsCallback(Lorg/kivy/android/PythonActivity$PermissionsCallback;)V
    .registers 4
    .param p1, "callback"    # Lorg/kivy/android/PythonActivity$PermissionsCallback;

    .line 545
    iput-object p1, p0, Lorg/kivy/android/PythonActivity;->permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    .line 547
    const-string v0, "PythonActivity"

    const-string v1, "addPermissionsCallback(): Added callback for onRequestPermissionsResult"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method public appConfirmedActive()V
    .registers 3

    .line 359
    iget-boolean v0, p0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    if-nez v0, :cond_11

    .line 360
    const-string v0, "PythonActivity"

    const-string v1, "appConfirmedActive() -> preparing loading screen removal"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    .line 362
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    .line 364
    :cond_11
    return-void
.end method

.method public checkCurrentPermission(Ljava/lang/String;)Z
    .registers 8
    .param p1, "permission"    # Ljava/lang/String;

    .line 564
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    .line 565
    return v1

    .line 568
    :cond_8
    const/4 v0, 0x0

    :try_start_9
    const-class v2, Landroid/app/Activity;

    const-string v3, "checkSelfPermission"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 569
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 570
    .local v2, "methodCheckPermission":Ljava/lang/reflect/Method;
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 571
    .local v3, "resultObj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_27} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_27} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_27} :catch_2b

    .line 572
    .local v4, "result":I
    if-nez v4, :cond_2a

    .line 573
    return v1

    .line 576
    .end local v2    # "methodCheckPermission":Ljava/lang/reflect/Method;
    .end local v3    # "resultObj":Ljava/lang/Object;
    .end local v4    # "result":I
    :cond_2a
    goto :goto_2c

    .line 574
    :catch_2b
    move-exception v1

    .line 577
    :goto_2c
    return v0
.end method

.method public considerLoadingScreenRemoval()V
    .registers 2

    .line 371
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 372
    return-void

    .line 373
    :cond_5
    new-instance v0, Lorg/kivy/android/PythonActivity$2;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$2;-><init>(Lorg/kivy/android/PythonActivity;)V

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public getAppRoot()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "app_root":Ljava/lang/String;
    return-object v0
.end method

.method public getEntryPoint(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "search_dir"    # Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "entryPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "main.pyo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v1, "main.pyc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v3, "mainFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 427
    return-object v2

    .line 429
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "mainFile":Ljava/io/File;
    :cond_3f
    goto :goto_13

    .line 430
    :cond_40
    const-string v1, "main.py"

    return-object v1
.end method

.method public loadLibraries()V
    .registers 5

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "app_root":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "app_root_file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .line 73
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {v1, v2}, Lorg/kivy/android/PythonUtil;->loadLibraries(Ljava/io/File;Ljava/io/File;)V

    .line 74
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 280
    return-void

    .line 281
    :cond_5
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->onResume()V

    .line 282
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    monitor-enter v0

    .line 283
    :try_start_b
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 284
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$ActivityResultListener;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kivy/android/PythonActivity$ActivityResultListener;

    invoke-interface {v2, p1, p2, p3}, Lorg/kivy/android/PythonActivity$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_11

    .line 286
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$ActivityResultListener;>;"
    :cond_21
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    const-string v0, "PythonActivity"

    const-string v1, "PythonActivity onCreate running"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lorg/renpy/android/ResourceManager;

    invoke-direct {v0, p0}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 59
    const-string v0, "PythonActivity"

    const-string v1, "About to do super onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "PythonActivity"

    const-string v1, "Did super onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-object p0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 64
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->showLoadingScreen()V

    .line 66
    new-instance v0, Lorg/kivy/android/PythonActivity$UnpackFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;-><init>(Lorg/kivy/android/PythonActivity;Lorg/kivy/android/PythonActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/kivy/android/PythonActivity$UnpackFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 245
    return-void

    .line 246
    :cond_5
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->onResume()V

    .line 247
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    monitor-enter v0

    .line 248
    :try_start_b
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 249
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$NewIntentListener;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kivy/android/PythonActivity$NewIntentListener;

    invoke-interface {v2, p1}, Lorg/kivy/android/PythonActivity$NewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_11

    .line 252
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$NewIntentListener;>;"
    :cond_21
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected onPause()V
    .registers 3

    .line 494
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 495
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 498
    :cond_11
    const-string v0, "PythonActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :try_start_18
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onPause()V
    :try_end_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 504
    goto :goto_1d

    .line 501
    :catch_1c
    move-exception v0

    .line 505
    :goto_1d
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 552
    const-string v0, "PythonActivity"

    const-string v1, "onRequestPermissionsResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-boolean v0, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    if-eqz v0, :cond_17

    .line 554
    const-string v0, "PythonActivity"

    const-string v1, "onRequestPermissionsResult passed to callback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

    invoke-interface {v0, p1, p2, p3}, Lorg/kivy/android/PythonActivity$PermissionsCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 557
    :cond_17
    invoke-super {p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 558
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 509
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 510
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 512
    :cond_9
    const-string v0, "PythonActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_10
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onResume()V
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_13} :catch_14

    .line 518
    goto :goto_15

    .line 515
    :catch_14
    move-exception v0

    .line 519
    :goto_15
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    .line 520
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 525
    :try_start_0
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onWindowFocusChanged(Z)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    .line 529
    goto :goto_5

    .line 526
    :catch_4
    move-exception v0

    .line 530
    :goto_5
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    .line 531
    return-void
.end method

.method public registerActivityResultListener(Lorg/kivy/android/PythonActivity$ActivityResultListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$ActivityResultListener;

    .line 266
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_f

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    .line 268
    :cond_f
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public registerNewIntentListener(Lorg/kivy/android/PythonActivity$NewIntentListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$NewIntentListener;

    .line 231
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_f

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    .line 233
    :cond_f
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public removeLoadingScreen()V
    .registers 2

    .line 405
    new-instance v0, Lorg/kivy/android/PythonActivity$3;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$3;-><init>(Lorg/kivy/android/PythonActivity;)V

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .registers 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 597
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/kivy/android/PythonActivity;->requestPermissionsWithRequestCode([Ljava/lang/String;I)V

    .line 598
    return-void
.end method

.method public requestPermissionsWithRequestCode([Ljava/lang/String;I)V
    .registers 10
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    .line 585
    return-void

    .line 587
    :cond_7
    :try_start_7
    const-class v0, Landroid/app/Activity;

    const-string v1, "requestPermissions"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 588
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 590
    .local v0, "methodRequestPermission":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_29} :catch_2a

    .line 593
    .end local v0    # "methodRequestPermission":Ljava/lang/reflect/Method;
    goto :goto_2b

    .line 591
    :catch_2a
    move-exception v0

    .line 594
    :goto_2b
    return-void
.end method

.method protected sendCommand(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "command"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 350
    invoke-super {p0, p1, p2}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    .line 351
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V

    .line 352
    return v0
.end method

.method protected showLoadingScreen()V
    .registers 8

    .line 441
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_5d

    .line 442
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "presplash"

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lorg/renpy/android/ResourceManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 443
    .local v0, "presplashId":I
    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 444
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 446
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_17
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_56

    move-object v2, v3

    .line 449
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 450
    goto :goto_22

    :catch_20
    move-exception v3

    .line 451
    nop

    .line 453
    :goto_22
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    .line 454
    sget-object v3, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    iget-object v3, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v4, "presplash_color"

    invoke-virtual {v3, v4}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "backgroundColor":Ljava/lang/String;
    if-eqz v3, :cond_43

    .line 469
    :try_start_38
    sget-object v4, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_41} :catch_42

    .line 470
    goto :goto_43

    :catch_42
    move-exception v4

    .line 472
    :cond_43
    :goto_43
    sget-object v4, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    sget-object v4, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 475
    .end local v0    # "presplashId":I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "backgroundColor":Ljava/lang/String;
    goto :goto_5d

    .line 448
    .restart local v0    # "presplashId":I
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_56
    move-exception v3

    .line 449
    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 450
    goto :goto_5c

    :catch_5b
    move-exception v4

    .line 451
    :goto_5c
    throw v3

    .line 479
    .end local v0    # "presplashId":I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5d
    :goto_5d
    :try_start_5d
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_67

    .line 480
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->setContentView(Landroid/view/View;)V

    goto :goto_76

    .line 481
    :cond_67
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_76

    .line 482
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_76
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_76} :catch_77

    .line 489
    :cond_76
    :goto_76
    goto :goto_78

    .line 484
    :catch_77
    move-exception v0

    .line 490
    :goto_78
    return-void
.end method

.method public toastError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 82
    move-object v0, p0

    .line 84
    .local v0, "thisActivity":Landroid/app/Activity;
    new-instance v1, Lorg/kivy/android/PythonActivity$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/kivy/android/PythonActivity$1;-><init>(Lorg/kivy/android/PythonActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    monitor-enter p0

    .line 93
    const-wide/16 v1, 0x3e8

    :try_start_c
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_12
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 95
    goto :goto_13

    .line 96
    :catchall_10
    move-exception v1

    goto :goto_15

    .line 94
    :catch_12
    move-exception v1

    .line 96
    :goto_13
    :try_start_13
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_10

    throw v1
.end method

.method public unregisterActivityResultListener(Lorg/kivy/android/PythonActivity$ActivityResultListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$ActivityResultListener;

    .line 272
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 273
    return-void

    .line 274
    :cond_5
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public unregisterNewIntentListener(Lorg/kivy/android/PythonActivity$NewIntentListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$NewIntentListener;

    .line 237
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 238
    return-void

    .line 239
    :cond_5
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method
