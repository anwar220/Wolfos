# classes2.dex

.class public final synthetic Landroid/hardware/radio/ITuner$Stub$Proxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/ITuner$Stub$Proxy$$ExternalSyntheticLambda2;->f$0:Landroid/os/Parcel;

    iput-object p2, p0, Landroid/hardware/radio/ITuner$Stub$Proxy$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/ITuner$Stub$Proxy$$ExternalSyntheticLambda2;->f$0:Landroid/os/Parcel;

    iget-object v1, p0, Landroid/hardware/radio/ITuner$Stub$Proxy$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Landroid/hardware/radio/ITuner$Stub$Proxy;->lambda$getParameters$2(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method