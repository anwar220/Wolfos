# classes2.dex

.class public final synthetic Landroid/location/GpsStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Landroid/location/GpsStatus;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GpsStatus;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/GpsStatus$$ExternalSyntheticLambda0;->f$0:Landroid/location/GpsStatus;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Landroid/location/GpsStatus$$ExternalSyntheticLambda0;->f$0:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->lambda$new$0$android-location-GpsStatus()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
