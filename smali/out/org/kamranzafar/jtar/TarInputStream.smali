.class public Lorg/kamranzafar/jtar/TarInputStream;
.super Ljava/io/FilterInputStream;
.source "TarInputStream.java"


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x800


# instance fields
.field private bytesRead:J

.field private currentEntry:Lorg/kamranzafar/jtar/TarEntry;

.field private currentFileSize:J

.field private defaultSkip:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    .line 39
    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    .line 40
    return-void
.end method


# virtual methods
.method protected closeCurrentEntry()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_52

    .line 168
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_4a

    .line 170
    move-wide v3, v1

    .line 171
    .local v3, "bs":J
    :goto_13
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_4a

    .line 172
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v5, v7

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lorg/kamranzafar/jtar/TarInputStream;->skip(J)J

    move-result-wide v5

    .line 174
    .local v5, "res":J
    cmp-long v0, v5, v1

    if-nez v0, :cond_47

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v7, v9

    cmp-long v0, v7, v1

    if-lez v0, :cond_47

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Possible tar file corruption"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_47
    const/4 v0, 0x0

    add-long/2addr v3, v5

    .line 180
    .end local v5    # "res":J
    goto :goto_13

    .line 183
    .end local v3    # "bs":J
    :cond_4a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 184
    iput-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    .line 185
    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarInputStream;->skipPad()V

    .line 187
    :cond_52
    return-void
.end method

.method public getCurrentOffset()J
    .registers 3

    .line 158
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    return-wide v0
.end method

.method public getNextEntry()Lorg/kamranzafar/jtar/TarEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarInputStream;->closeCurrentEntry()V

    .line 121
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 122
    .local v1, "header":[B
    new-array v2, v0, [B

    .line 123
    .local v2, "theader":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 126
    .local v4, "tr":I
    :goto_b
    if-ge v4, v0, :cond_1b

    .line 127
    rsub-int v5, v4, 0x200

    invoke-virtual {p0, v2, v3, v5}, Lorg/kamranzafar/jtar/TarInputStream;->read([BII)I

    move-result v5

    .line 129
    .local v5, "res":I
    if-gez v5, :cond_16

    .line 130
    goto :goto_1b

    .line 133
    :cond_16
    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/2addr v4, v5

    .line 135
    .end local v5    # "res":I
    goto :goto_b

    .line 138
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 139
    .local v0, "eof":Z
    array-length v5, v1

    :goto_1d
    if-ge v3, v5, :cond_28

    aget-byte v6, v1, v3

    .line 140
    .local v6, "b":B
    if-eqz v6, :cond_25

    .line 141
    const/4 v0, 0x0

    .line 142
    goto :goto_28

    .line 139
    .end local v6    # "b":B
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 146
    :cond_28
    :goto_28
    if-nez v0, :cond_31

    .line 147
    new-instance v3, Lorg/kamranzafar/jtar/TarEntry;

    invoke-direct {v3, v1}, Lorg/kamranzafar/jtar/TarEntry;-><init>([B)V

    iput-object v3, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 150
    :cond_31
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    return-object v3
.end method

.method public isDefaultSkip()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 53
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 73
    .local v1, "buf":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/kamranzafar/jtar/TarInputStream;->read([BII)I

    move-result v0

    .line 75
    .local v0, "res":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_10

    .line 76
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 79
    :cond_10
    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    const/4 v1, -0x1

    if-eqz v0, :cond_2a

    .line 92
    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    .line 93
    return v1

    .line 94
    :cond_12
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-gez v0, :cond_2a

    .line 95
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 99
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 101
    .local v0, "br":I
    if-eq v0, v1, :cond_40

    .line 102
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v1, :cond_3a

    .line 103
    iget-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    .line 106
    :cond_3a
    iget-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    .line 109
    :cond_40
    return v0
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultSkip(Z)V
    .registers 2
    .param p1, "defaultSkip"    # Z

    .line 247
    iput-boolean p1, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    .line 248
    return-void
.end method

.method public skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    if-eqz v0, :cond_e

    .line 218
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 219
    .local v0, "bs":J
    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    .line 221
    return-wide v0

    .line 224
    .end local v0    # "bs":J
    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_15

    .line 225
    return-wide v0

    .line 228
    :cond_15
    move-wide v2, p1

    .line 229
    .local v2, "left":J
    const/16 v4, 0x800

    new-array v4, v4, [B

    .line 231
    .local v4, "sBuff":[B
    :goto_1a
    cmp-long v5, v2, v0

    if-lez v5, :cond_32

    .line 232
    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    cmp-long v8, v2, v6

    if-gez v8, :cond_27

    move-wide v6, v2

    nop

    :cond_27
    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/kamranzafar/jtar/TarInputStream;->read([BII)I

    move-result v5

    .line 233
    .local v5, "res":I
    if-gez v5, :cond_2f

    .line 234
    goto :goto_32

    .line 236
    :cond_2f
    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 237
    .end local v5    # "res":I
    goto :goto_1a

    .line 239
    :cond_32
    :goto_32
    const/4 v0, 0x0

    sub-long v0, p1, v2

    return-wide v0
.end method

.method protected skipPad()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 196
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    const-wide/16 v4, 0x200

    rem-long/2addr v0, v4

    long-to-int v0, v0

    .line 198
    .local v0, "extra":I
    if-lez v0, :cond_24

    .line 199
    nop

    .line 199
    .local v2, "bs":J
    :goto_11
    move-wide v1, v2

    .line 200
    .end local v2    # "bs":J
    .local v1, "bs":J
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_24

    .line 201
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lorg/kamranzafar/jtar/TarInputStream;->skip(J)J

    move-result-wide v3

    .line 202
    .local v3, "res":J
    add-long v2, v1, v3

    .line 203
    .end local v1    # "bs":J
    .end local v3    # "res":J
    .restart local v2    # "bs":J
    goto :goto_11

    .line 206
    .end local v0    # "extra":I
    .end local v2    # "bs":J
    :cond_24
    return-void
.end method
