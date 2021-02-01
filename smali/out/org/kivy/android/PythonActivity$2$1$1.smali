.class Lorg/kivy/android/PythonActivity$2$1$1;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/kivy/android/PythonActivity$2$1;


# direct methods
.method constructor <init>(Lorg/kivy/android/PythonActivity$2$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/kivy/android/PythonActivity$2$1;

    .line 386
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$2$1$1;->this$2:Lorg/kivy/android/PythonActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 390
    invoke-static {}, Lorg/kivy/android/PythonActivity;->access$700()Lorg/libsdl/app/SDLActivity;

    move-result-object v0

    check-cast v0, Lorg/kivy/android/PythonActivity;

    .line 391
    .local v0, "activity":Lorg/kivy/android/PythonActivity;
    if-eqz v0, :cond_b

    .line 392
    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->removeLoadingScreen()V

    .line 393
    :cond_b
    return-void
.end method
