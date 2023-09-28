# classes4.dex

.class public Lcom/android/internal/os/ProcLocksReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;
    }
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field private mReader:Lcom/android/internal/util/ProcFileReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    const-string v0, "/proc/locks"

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    iput-object p1, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    if-nez v4, :cond_17

    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    goto :goto_1a

    :cond_17
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->rewind()V

    :cond_1a
    :goto_1a
    iget-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_39

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    if-gez v3, :cond_1a

    move v3, v2

    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(I)V

    goto :goto_1a

    :cond_39
    const/4 v3, -0x1

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    iget-object v6, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v6}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    move-wide v0, v4

    goto :goto_1a

    :cond_56
    return-void
.end method
