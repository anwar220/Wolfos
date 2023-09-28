# classes2.dex

.class Landroid/location/LocationManager$ProviderRequestLazyLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderRequestLazyLoader"
.end annotation


# static fields
.field static final sProviderRequestListeners:Landroid/location/LocationManager$ProviderRequestTransportManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/LocationManager$ProviderRequestTransportManager;

    invoke-direct {v0}, Landroid/location/LocationManager$ProviderRequestTransportManager;-><init>()V

    sput-object v0, Landroid/location/LocationManager$ProviderRequestLazyLoader;->sProviderRequestListeners:Landroid/location/LocationManager$ProviderRequestTransportManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
