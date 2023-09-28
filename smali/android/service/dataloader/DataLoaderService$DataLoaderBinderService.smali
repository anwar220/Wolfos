# classes3.dex

.class Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;
.super Landroid/content/pm/IDataLoader$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dataloader/DataLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderBinderService"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dataloader/DataLoaderService;


# direct methods
.method private constructor <init>(Landroid/service/dataloader/DataLoaderService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-direct {p0}, Landroid/content/pm/IDataLoader$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/dataloader/DataLoaderService;Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;-><init>(Landroid/service/dataloader/DataLoaderService;)V

    return-void
.end method


# virtual methods
.method public create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1, p3, p2, p4}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeCreateDataLoader(Landroid/service/dataloader/DataLoaderService;ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_28
    .catchall {:try_start_0 .. :try_end_5} :catchall_26

    iget-object v0, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    if-eqz v0, :cond_25

    iget-object v0, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v0, v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->cmd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v0, v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->pendingReads:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v0, v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->log:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v0, v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->blocksWritten:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    goto :goto_4a

    :catch_28
    move-exception v0

    :try_start_29
    const-string v1, "DataLoaderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create native loader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->destroy(I)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_26

    :goto_4a
    iget-object v1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    if-eqz v1, :cond_6a

    iget-object v1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v1, v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->cmd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v1, v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->pendingReads:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v1, v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->log:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object v1, v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->blocksWritten:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_6a
    throw v0
.end method

.method public destroy(I)V
    .registers 4

    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeDestroyDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to destroy loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativePrepareImage(Landroid/service/dataloader/DataLoaderService;I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to prepare image for data loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public start(I)V
    .registers 4

    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeStartDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public stop(I)V
    .registers 4

    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeStopDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to stop loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method
