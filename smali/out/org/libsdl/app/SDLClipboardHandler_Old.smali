.class Lorg/libsdl/app/SDLClipboardHandler_Old;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Lorg/libsdl/app/SDLClipboardHandler;


# instance fields
.field protected mClipMgrOld:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2175
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    .line 2176
    return-void
.end method


# virtual methods
.method public clipboardGetText()Ljava/lang/String;
    .registers 3

    .line 2186
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2187
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_d

    .line 2188
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2190
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public clipboardHasText()Z
    .registers 2

    .line 2180
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public clipboardSetText(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 2195
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    return-void
.end method
