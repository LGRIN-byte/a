.class Lorg/kivy/android/PythonActivity$2;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kivy/android/PythonActivity;


# direct methods
.method constructor <init>(Lorg/kivy/android/PythonActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/kivy/android/PythonActivity;

    .line 373
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 375
    invoke-static {}, Lorg/kivy/android/PythonActivity;->access$600()Lorg/libsdl/app/SDLActivity;

    move-result-object v0

    check-cast v0, Lorg/kivy/android/PythonActivity;

    iget-boolean v0, v0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    iget-object v0, v0, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    if-nez v0, :cond_27

    .line 382
    new-instance v0, Lorg/kivy/android/PythonActivity$2$1;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$2$1;-><init>(Lorg/kivy/android/PythonActivity$2;)V

    .line 397
    .local v0, "removalTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    .line 398
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    iget-object v1, v1, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 400
    .end local v0    # "removalTask":Ljava/util/TimerTask;
    :cond_27
    return-void
.end method
