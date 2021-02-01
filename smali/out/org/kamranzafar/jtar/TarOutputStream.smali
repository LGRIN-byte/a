.class public Lorg/kamranzafar/jtar/TarOutputStream;
.super Ljava/io/OutputStream;
.source "TarOutputStream.java"


# instance fields
.field private bytesWritten:J

.field private currentEntry:Lorg/kamranzafar/jtar/TarEntry;

.field private currentFileSize:J

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "fout"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 45
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    .line 47
    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 9
    .param p1, "fout"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v0, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 57
    .local v1, "fileSize":J
    if-eqz p2, :cond_1b

    const-wide/16 v3, 0x400

    cmp-long v5, v1, v3

    if-lez v5, :cond_1b

    .line 58
    sub-long v3, v1, v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    :cond_1b
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 38
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    .line 41
    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarOutputStream;->closeCurrentEntry()V

    .line 71
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/kamranzafar/jtar/TarOutputStream;->write([B)V

    .line 72
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 73
    return-void
.end method

.method protected closeCurrentEntry()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_4a

    .line 137
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    .line 138
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current entry["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v2}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] of size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 139
    invoke-virtual {v2}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] has not been fully written."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    .line 145
    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarOutputStream;->pad()V

    .line 147
    :cond_4a
    return-void
.end method

.method protected pad()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 156
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 158
    .local v0, "extra":I
    if-lez v0, :cond_17

    .line 159
    rsub-int v1, v0, 0x200

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lorg/kamranzafar/jtar/TarOutputStream;->write([B)V

    .line 162
    .end local v0    # "extra":I
    :cond_17
    return-void
.end method

.method public putNextEntry(Lorg/kamranzafar/jtar/TarEntry;)V
    .registers 3
    .param p1, "entry"    # Lorg/kamranzafar/jtar/TarEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarOutputStream;->closeCurrentEntry()V

    .line 122
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 123
    .local v0, "header":[B
    invoke-virtual {p1, v0}, Lorg/kamranzafar/jtar/TarEntry;->writeEntryHeader([B)V

    .line 125
    invoke-virtual {p0, v0}, Lorg/kamranzafar/jtar/TarOutputStream;->write([B)V

    .line 127
    iput-object p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 128
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 82
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    .line 84
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_15

    .line 85
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    .line 87
    :cond_15
    return-void
.end method

.method public write([BII)V
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_56

    .line 97
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_56

    .line 98
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current entry["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v2}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 99
    invoke-virtual {v2}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] is smaller than the bytes["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] being written."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_56
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    .line 108
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_6b

    .line 109
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    .line 111
    :cond_6b
    return-void
.end method
