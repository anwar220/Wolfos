# classes2.dex

.class final Landroid/location/CountryDetector$ListenerTransport;
.super Landroid/location/ICountryListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerTransport"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/CountryListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Landroid/location/CountryDetector$ListenerTransport;)Landroid/location/CountryListener;
    .registers 1

    iget-object p0, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Landroid/location/CountryListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/location/CountryListener;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Landroid/location/ICountryListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Landroid/location/CountryListener;

    if-eqz p2, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    goto :goto_16

    :cond_f
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    :goto_16
    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .registers 4

    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/location/CountryDetector$ListenerTransport$1;

    invoke-direct {v1, p0, p1}, Landroid/location/CountryDetector$ListenerTransport$1;-><init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
