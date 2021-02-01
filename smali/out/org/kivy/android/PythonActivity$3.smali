.class Lorg/kivy/android/PythonActivity$3;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity;->removeLoadingScreen()V
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

    .line 405
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$3;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 407
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    .line 408
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 409
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 411
    const/4 v0, 0x0

    sput-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    .line 413
    :cond_1c
    return-void
.end method
