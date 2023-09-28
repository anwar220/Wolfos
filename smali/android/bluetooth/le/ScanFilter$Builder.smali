# classes.dex

.class public final Landroid/bluetooth/le/ScanFilter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final LEN_IRK_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private mAddressType:I

.field private mAdvertisingData:[B

.field private mAdvertisingDataMask:[B

.field private mAdvertisingDataType:I

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mGroupBasedFiltering:Z

.field private mIrk:[B

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mOrgId:I

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mTDSFlags:I

.field private mTDSFlagsMask:I

.field private mUuidMask:Landroid/os/ParcelUuid;

.field private mWifiNANHash:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mOrgId:I

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlags:I

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlagsMask:I

    return-void
.end method

.method private setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    if-ltz p2, :cond_28

    const/4 v0, 0x1

    if-gt p2, v0, :cond_28

    if-ne p2, v0, :cond_21

    if-eqz p3, :cond_21

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->isAddressRandomStatic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid combination: IRK requires either a PUBLIC or RANDOM (STATIC) Address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iput p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mIrk:[B

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'addressType\' is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid device address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanFilter;
    .registers 28

    move-object/from16 v0, p0

    new-instance v25, Landroid/bluetooth/le/ScanFilter;

    move-object/from16 v1, v25

    iget-object v2, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v5, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v6, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v7, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object v8, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v9, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    iget-object v10, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    iget v11, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iget-object v12, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    iget v14, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    iget-object v15, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mIrk:[B

    move-object/from16 v26, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    move/from16 v16, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    move-object/from16 v18, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mOrgId:I

    move/from16 v19, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlags:I

    move/from16 v20, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlagsMask:I

    move/from16 v21, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mWifiNANHash:[B

    move-object/from16 v22, v1

    iget-boolean v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mGroupBasedFiltering:Z

    move/from16 v23, v1

    const/16 v24, 0x0

    move-object/from16 v1, v26

    invoke-direct/range {v1 .. v24}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BIII[BZLandroid/bluetooth/le/ScanFilter-IA;)V

    return-object v25
.end method

.method public setAdvertisingDataType(I)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 4

    if-ltz p1, :cond_5

    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid advertising data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdvertisingDataTypeWithData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6

    if-ltz p1, :cond_27

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    if-eqz v0, :cond_20

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    if-eqz v1, :cond_18

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_f

    goto :goto_20

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for mAdvertisingData and mAdvertisingDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mAdvertisingData is null while mAdvertisingDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    return-object p0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid advertising data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 3

    if-nez p1, :cond_5

    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    return-object p0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAddress(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'irk\' is invalid length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupBasedFiltering(Z)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mGroupBasedFiltering:Z

    return-object p0
.end method

.method public setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_d
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    if-eqz v0, :cond_2c

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    if-eqz v1, :cond_23

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_1a

    goto :goto_2c

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5

    if-eqz p1, :cond_a

    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6

    if-eqz p1, :cond_28

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    if-eqz v0, :cond_21

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    if-eqz v1, :cond_18

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_f

    goto :goto_21

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for service data and service data mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 3

    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-nez p1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    :cond_7
    return-object p0
.end method

.method public setServiceSolicitationUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5

    if-eqz p2, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SolicitationUuid is null while SolicitationUuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_d
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 3

    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_9

    goto :goto_12

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_12
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setTransportDiscoveryData(III[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 7

    if-ltz p1, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    if-nez p4, :cond_8

    goto :goto_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi NAN Hash is not null for non-Wifi Org Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_10
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mOrgId:I

    iput p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlags:I

    iput p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlagsMask:I

    iput-object p4, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mWifiNANHash:[B

    return-object p0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid organization id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
