# classes3.dex

.class final Landroid/os/CancellationSignal$Transport;
.super Landroid/os/ICancellationSignal$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field final mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/CancellationSignal$Transport-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/CancellationSignal$Transport;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method