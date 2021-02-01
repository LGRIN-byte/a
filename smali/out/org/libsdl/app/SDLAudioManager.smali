.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "SDLAudioManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioClose()V
    .registers 1

    .line 351
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_11

    .line 352
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 353
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 354
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 356
    :cond_11
    return-void
.end method

.method public static audioOpen(IIII)[I
    .registers 5
    .param p0, "sampleRate"    # I
    .param p1, "audioFormat"    # I
    .param p2, "desiredChannels"    # I
    .param p3, "desiredFrames"    # I

    .line 238
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object v0

    return-object v0
.end method

.method public static audioWriteByteBuffer([B)V
    .registers 5
    .param p0, "buffer"    # [B

    .line 297
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_c

    .line 298
    const-string v0, "SDLAudio"

    const-string v1, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 302
    :cond_c
    const/4 v0, 0x0

    .line 302
    .local v0, "i":I
    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_2f

    .line 303
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 304
    .local v1, "result":I
    if-lez v1, :cond_1c

    .line 305
    add-int/2addr v0, v1

    goto :goto_26

    .line 306
    :cond_1c
    if-nez v1, :cond_27

    .line 308
    const-wide/16 v2, 0x1

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    .line 311
    .end local v1    # "result":I
    :goto_23
    goto :goto_26

    .line 309
    .restart local v1    # "result":I
    :catch_24
    move-exception v2

    goto :goto_23

    .line 316
    .end local v1    # "result":I
    :goto_26
    goto :goto_d

    .line 313
    .restart local v1    # "result":I
    :cond_27
    const-string v2, "SDLAudio"

    const-string v3, "SDL audio: error return from write(byte)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 317
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_2f
    return-void
.end method

.method public static audioWriteFloatBuffer([F)V
    .registers 6
    .param p0, "buffer"    # [F

    .line 245
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_c

    .line 246
    const-string v0, "SDLAudio"

    const-string v1, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 250
    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_30

    .line 251
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v2

    .line 252
    .local v2, "result":I
    if-lez v2, :cond_1d

    .line 253
    add-int/2addr v1, v2

    goto :goto_27

    .line 254
    :cond_1d
    if-nez v2, :cond_28

    .line 256
    const-wide/16 v3, 0x1

    :try_start_21
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    .line 259
    .end local v2    # "result":I
    :goto_24
    goto :goto_27

    .line 257
    .restart local v2    # "result":I
    :catch_25
    move-exception v3

    goto :goto_24

    .line 264
    .end local v2    # "result":I
    :goto_27
    goto :goto_e

    .line 261
    .restart local v2    # "result":I
    :cond_28
    const-string v0, "SDLAudio"

    const-string v3, "SDL audio: error return from write(float)"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    .end local v1    # "i":I
    .end local v2    # "result":I
    :cond_30
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .registers 5
    .param p0, "buffer"    # [S

    .line 271
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_c

    .line 272
    const-string v0, "SDLAudio"

    const-string v1, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 276
    :cond_c
    const/4 v0, 0x0

    .line 276
    .local v0, "i":I
    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_2f

    .line 277
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 278
    .local v1, "result":I
    if-lez v1, :cond_1c

    .line 279
    add-int/2addr v0, v1

    goto :goto_26

    .line 280
    :cond_1c
    if-nez v1, :cond_27

    .line 282
    const-wide/16 v2, 0x1

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    .line 285
    .end local v1    # "result":I
    :goto_23
    goto :goto_26

    .line 283
    .restart local v1    # "result":I
    :catch_24
    move-exception v2

    goto :goto_23

    .line 290
    .end local v1    # "result":I
    :goto_26
    goto :goto_d

    .line 287
    .restart local v1    # "result":I
    :cond_27
    const-string v2, "SDLAudio"

    const-string v3, "SDL audio: error return from write(short)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 291
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_2f
    return-void
.end method

.method public static captureClose()V
    .registers 1

    .line 360
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_11

    .line 361
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 362
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 363
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 365
    :cond_11
    return-void
.end method

.method public static captureOpen(IIII)[I
    .registers 5
    .param p0, "sampleRate"    # I
    .param p1, "audioFormat"    # I
    .param p2, "desiredChannels"    # I
    .param p3, "desiredFrames"    # I

    .line 323
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object v0

    return-object v0
.end method

.method public static captureReadByteBuffer([BZ)I
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "blocking"    # Z

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_f

    .line 343
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    return v0

    .line 345
    :cond_f
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    return v0
.end method

.method public static captureReadFloatBuffer([FZ)I
    .registers 6
    .param p0, "buffer"    # [F
    .param p1, "blocking"    # Z

    .line 328
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v1, p0

    xor-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/media/AudioRecord;->read([FIII)I

    move-result v0

    return v0
.end method

.method public static captureReadShortBuffer([SZ)I
    .registers 6
    .param p0, "buffer"    # [S
    .param p1, "blocking"    # Z

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_f

    .line 334
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    return v0

    .line 336
    :cond_f
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    return v0
.end method

.method protected static getAudioFormatString(I)Ljava/lang/String;
    .registers 2
    .param p0, "audioFormat"    # I

    .line 22
    packed-switch p0, :pswitch_data_12

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_8
    const-string v0, "float"

    return-object v0

    .line 24
    :pswitch_b
    const-string v0, "8-bit"

    return-object v0

    .line 26
    :pswitch_e
    const-string v0, "16-bit"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static initialize()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 16
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 17
    return-void
.end method

.method public static native nativeSetupJNI()I
.end method

.method protected static open(ZIIII)[I
    .registers 28
    .param p0, "isCapture"    # Z
    .param p1, "sampleRate"    # I
    .param p2, "audioFormat"    # I
    .param p3, "desiredChannels"    # I
    .param p4, "desiredFrames"    # I

    move/from16 v0, p1

    move/from16 v1, p3

    .line 39
    move/from16 v2, p4

    const-string v3, "SDLAudio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_17

    const-string v5, "capture"

    goto :goto_19

    :cond_17
    const-string v5, "playback"

    :goto_19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requested "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " frames of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " audio at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x2

    if-ge v3, v4, :cond_66

    .line 43
    if-le v1, v5, :cond_56

    .line 44
    const/4 v1, 0x2

    .line 46
    .end local p3    # "desiredChannels":I
    .local v1, "desiredChannels":I
    :cond_56
    const/16 v3, 0x1f40

    if-ge v0, v3, :cond_5d

    .line 47
    const/16 v0, 0x1f40

    .line 47
    .end local p1    # "sampleRate":I
    .local v0, "sampleRate":I
    :goto_5c
    goto :goto_66

    .line 48
    .end local v0    # "sampleRate":I
    .restart local p1    # "sampleRate":I
    :cond_5d
    const v3, 0xbb80

    if-le v0, v3, :cond_66

    .line 49
    const v0, 0xbb80

    goto :goto_5c

    .line 53
    .end local p1    # "sampleRate":I
    .restart local v0    # "sampleRate":I
    :cond_66
    :goto_66
    const/16 v3, 0x17

    const/4 v6, 0x4

    move/from16 v7, p2

    if-ne v7, v6, :cond_78

    .line 54
    if-eqz p0, :cond_72

    const/16 v4, 0x17

    nop

    .line 55
    .local v4, "minSDKVersion":I
    :cond_72
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v4, :cond_78

    .line 56
    const/4 v4, 0x2

    .line 56
    .end local p2    # "audioFormat":I
    .local v4, "audioFormat":I
    goto :goto_79

    .line 59
    .end local v4    # "audioFormat":I
    .restart local p2    # "audioFormat":I
    :cond_78
    move v4, v7

    .line 59
    .end local p2    # "audioFormat":I
    .restart local v4    # "audioFormat":I
    :goto_79
    packed-switch v4, :pswitch_data_23e

    .line 71
    const-string v7, "SDLAudio"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", getting ENCODING_PCM_16BIT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v4, 0x2

    .line 73
    const/4 v7, 0x2

    goto :goto_a0

    .line 68
    :pswitch_9a
    const/4 v7, 0x4

    .line 69
    .local v7, "sampleSize":I
    goto :goto_a0

    .line 62
    .end local v7    # "sampleSize":I
    :pswitch_9c
    const/4 v7, 0x1

    .line 63
    .restart local v7    # "sampleSize":I
    goto :goto_a0

    .line 65
    .end local v7    # "sampleSize":I
    :pswitch_9e
    const/4 v7, 0x2

    .line 66
    .restart local v7    # "sampleSize":I
    nop

    .line 73
    :goto_a0
    move v13, v7

    .line 77
    .end local v7    # "sampleSize":I
    .local v13, "sampleSize":I
    if-eqz p0, :cond_cb

    .line 78
    packed-switch v1, :pswitch_data_248

    .line 86
    const-string v3, "SDLAudio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channels, getting stereo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x2

    .line 88
    const/16 v3, 0xc

    .line 89
    .local v3, "channelConfig":I
    goto :goto_127

    .line 83
    .end local v3    # "channelConfig":I
    :pswitch_c5
    const/16 v3, 0xc

    .line 84
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 80
    .end local v3    # "channelConfig":I
    :pswitch_c8
    const/16 v3, 0x10

    .line 81
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 92
    .end local v3    # "channelConfig":I
    :cond_cb
    packed-switch v1, :pswitch_data_250

    .line 124
    const-string v3, "SDLAudio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channels, getting stereo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x2

    .line 126
    const/16 v3, 0xc

    goto :goto_127

    .line 115
    :pswitch_ed
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_f4

    .line 116
    const/16 v3, 0x18fc

    .line 116
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 118
    .end local v3    # "channelConfig":I
    :cond_f4
    const-string v3, "SDLAudio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channels, getting 5.1 surround"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x6

    .line 120
    const/16 v3, 0xfc

    .line 122
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 112
    .end local v3    # "channelConfig":I
    :pswitch_113
    const/16 v3, 0x4fc

    .line 113
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 109
    .end local v3    # "channelConfig":I
    :pswitch_116
    const/16 v3, 0xfc

    .line 110
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 106
    .end local v3    # "channelConfig":I
    :pswitch_119
    const/16 v3, 0xdc

    .line 107
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 103
    .end local v3    # "channelConfig":I
    :pswitch_11c
    const/16 v3, 0xcc

    .line 104
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 100
    .end local v3    # "channelConfig":I
    :pswitch_11f
    const/16 v3, 0x1c

    .line 101
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 97
    .end local v3    # "channelConfig":I
    :pswitch_122
    const/16 v3, 0xc

    .line 98
    .restart local v3    # "channelConfig":I
    goto :goto_127

    .line 94
    .end local v3    # "channelConfig":I
    :pswitch_125
    const/4 v3, 0x4

    .line 95
    .restart local v3    # "channelConfig":I
    nop

    .line 126
    :goto_127
    nop

    .line 168
    mul-int v14, v13, v1

    .line 174
    .local v14, "frameSize":I
    if-eqz p0, :cond_131

    .line 175
    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 175
    .local v7, "minBufferSize":I
    goto :goto_135

    .line 177
    .end local v7    # "minBufferSize":I
    :cond_131
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 177
    .restart local v7    # "minBufferSize":I
    :goto_135
    move v15, v7

    .line 179
    .end local v7    # "minBufferSize":I
    .local v15, "minBufferSize":I
    add-int v7, v15, v14

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    div-int/2addr v7, v14

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 181
    .end local p4    # "desiredFrames":I
    .local v2, "desiredFrames":I
    new-array v11, v6, [I

    .line 183
    .local v11, "results":[I
    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz p0, :cond_19b

    .line 184
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v6, :cond_17d

    .line 185
    new-instance v19, Landroid/media/AudioRecord;

    const/4 v7, 0x0

    mul-int v20, v2, v14

    move-object/from16 v6, v19

    move v8, v0

    move v9, v3

    move v10, v4

    move-object/from16 v21, v11

    move/from16 v11, v20

    .line 185
    .end local v11    # "results":[I
    .local v21, "results":[I
    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v19, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 189
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    if-eq v6, v12, :cond_177

    .line 190
    const-string v5, "SDLAudio"

    const-string v6, "Failed during initialization of AudioRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v5, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    .line 192
    sput-object v18, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 193
    return-object v18

    .line 196
    :cond_177
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->startRecording()V

    goto :goto_17f

    .line 199
    .end local v21    # "results":[I
    .restart local v11    # "results":[I
    :cond_17d
    move-object/from16 v21, v11

    .line 199
    .end local v11    # "results":[I
    .restart local v21    # "results":[I
    :goto_17f
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v6

    aput v6, v21, v17

    .line 200
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v6

    aput v6, v21, v12

    .line 201
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v6

    aput v6, v21, v5

    .line 202
    aput v2, v21, v16

    .line 229
    const/4 v5, 0x1

    goto :goto_1ee

    .line 205
    .end local v21    # "results":[I
    .restart local v11    # "results":[I
    :cond_19b
    move-object/from16 v21, v11

    .line 205
    .end local v11    # "results":[I
    .restart local v21    # "results":[I
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v6, :cond_1d2

    .line 206
    new-instance v19, Landroid/media/AudioTrack;

    const/4 v7, 0x3

    mul-int v11, v2, v14

    const/16 v20, 0x1

    move-object/from16 v6, v19

    move v8, v0

    move v9, v3

    move v10, v4

    const/4 v5, 0x1

    move/from16 v12, v20

    invoke-direct/range {v6 .. v12}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v19, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 211
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getState()I

    move-result v6

    if-eq v6, v5, :cond_1cc

    .line 214
    const-string v5, "SDLAudio"

    const-string v6, "Failed during initialization of Audio Track"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v5, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->release()V

    .line 216
    sput-object v18, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 217
    return-object v18

    .line 220
    :cond_1cc
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V

    goto :goto_1d3

    .line 223
    :cond_1d2
    const/4 v5, 0x1

    :goto_1d3
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v6

    aput v6, v21, v17

    .line 224
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v6

    aput v6, v21, v5

    .line 225
    sget-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v6

    const/4 v7, 0x2

    aput v6, v21, v7

    .line 226
    aput v2, v21, v16

    .line 229
    :goto_1ee
    const-string v6, "SDLAudio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1ff

    const-string v8, "capture"

    goto :goto_201

    :cond_1ff
    const-string v8, "playback"

    :goto_201
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v21, v16

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " frames of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget v8, v21, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v21, v5

    invoke-static {v5}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " audio at "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v21, v17

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Hz"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-object v21

    :pswitch_data_23e
    .packed-switch 0x2
        :pswitch_9e
        :pswitch_9c
        :pswitch_9a
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_c5
    .end packed-switch

    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_ed
    .end packed-switch
.end method
