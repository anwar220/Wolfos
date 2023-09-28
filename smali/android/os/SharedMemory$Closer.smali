# classes3.dex

.class final Landroid/os/SharedMemory$Closer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Closer"
.end annotation


# instance fields
.field private mFd:I

.field private mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;


# direct methods
.method private constructor <init>(ILandroid/os/SharedMemory$MemoryRegistration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/SharedMemory$Closer;->mFd:I

    iput-object p2, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$Closer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/SharedMemory$Closer;-><init>(ILandroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iget v1, p0, Landroid/os/SharedMemory$Closer;->mFd:I

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    nop

    iget-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void
.end method
