# classes2.dex

.class Landroid/location/CountryDetector$ListenerTransport$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/CountryDetector$ListenerTransport;->onCountryDetected(Landroid/location/Country;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/CountryDetector$ListenerTransport;

.field final synthetic val$country:Landroid/location/Country;


# direct methods
.method constructor <init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V
    .registers 3

    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport$1;->this$0:Landroid/location/CountryDetector$ListenerTransport;

    iput-object p2, p0, Landroid/location/CountryDetector$ListenerTransport$1;->val$country:Landroid/location/Country;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport$1;->this$0:Landroid/location/CountryDetector$ListenerTransport;

    invoke-static {v0}, Landroid/location/CountryDetector$ListenerTransport;->-$$Nest$fgetmListener(Landroid/location/CountryDetector$ListenerTransport;)Landroid/location/CountryListener;

    move-result-object v0

    iget-object v1, p0, Landroid/location/CountryDetector$ListenerTransport$1;->val$country:Landroid/location/Country;

    invoke-interface {v0, v1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    return-void
.end method
