# classes2.dex

.class Landroid/location/LocationManager$GnssNmeaTransport;
.super Landroid/location/IGnssNmeaListener$Stub;

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNmeaTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssNmeaListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/OnNmeaMessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Landroid/location/OnNmeaMessageListener;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/OnNmeaMessageListener;)V
    .registers 8

    invoke-direct {p0}, Landroid/location/IGnssNmeaListener$Stub;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mAttributionTag:Ljava/lang/String;

    iput-object p3, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    return-void
.end method

.method static synthetic lambda$onNmeaReceived$0(Ljava/lang/String;JLandroid/location/OnNmeaMessageListener;)V
    .registers 4

    invoke-interface {p3, p0, p1, p2}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getAttributionTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Landroid/location/OnNmeaMessageListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    return-object v0
.end method

.method public bridge synthetic getListener()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/location/LocationManager$GnssNmeaTransport;->getListener()Landroid/location/OnNmeaMessageListener;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2}, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssNmeaTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    return-void
.end method
