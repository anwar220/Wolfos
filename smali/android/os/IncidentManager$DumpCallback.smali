# classes3.dex

.class public Landroid/os/IncidentManager$DumpCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpCallback"
.end annotation


# instance fields
.field mBinder:Landroid/os/IIncidentDumpCallback$Stub;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Landroid/os/IncidentManager$DumpCallback;)I
    .registers 1

    iget p0, p0, Landroid/os/IncidentManager$DumpCallback;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmExecutor(Landroid/os/IncidentManager$DumpCallback;Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmId(Landroid/os/IncidentManager$DumpCallback;I)V
    .registers 2

    iput p1, p0, Landroid/os/IncidentManager$DumpCallback;->mId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/IncidentManager$DumpCallback$1;

    invoke-direct {v0, p0}, Landroid/os/IncidentManager$DumpCallback$1;-><init>(Landroid/os/IncidentManager$DumpCallback;)V

    iput-object v0, p0, Landroid/os/IncidentManager$DumpCallback;->mBinder:Landroid/os/IIncidentDumpCallback$Stub;

    return-void
.end method


# virtual methods
.method public onDumpSection(ILjava/io/OutputStream;)V
    .registers 3

    return-void
.end method
