# classes.dex

.class public abstract Landroid/bluetooth/le/AdvertisingSetCallback;
.super Ljava/lang/Object;


# static fields
.field public static final ADVERTISE_FAILED_ALREADY_STARTED:I = 0x3

.field public static final ADVERTISE_FAILED_DATA_TOO_LARGE:I = 0x1

.field public static final ADVERTISE_FAILED_FEATURE_UNSUPPORTED:I = 0x5

.field public static final ADVERTISE_FAILED_INTERNAL_ERROR:I = 0x4

.field public static final ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:I = 0x2

.field public static final ADVERTISE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .registers 3

    return-void
.end method

.method public onAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .registers 4

    return-void
.end method

.method public onAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;II)V
    .registers 4

    return-void
.end method

.method public onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V
    .registers 4

    return-void
.end method

.method public onAdvertisingSetStopped(Landroid/bluetooth/le/AdvertisingSet;)V
    .registers 2

    return-void
.end method

.method public onOwnAddressRead(Landroid/bluetooth/le/AdvertisingSet;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onPeriodicAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .registers 3

    return-void
.end method

.method public onPeriodicAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .registers 4

    return-void
.end method

.method public onPeriodicAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;I)V
    .registers 3

    return-void
.end method

.method public onScanResponseDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .registers 3

    return-void
.end method
