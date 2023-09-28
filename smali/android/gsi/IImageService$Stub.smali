# classes.dex

.class public abstract Landroid/gsi/IImageService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/gsi/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_backingImageExists:I = 0x5

.field static final TRANSACTION_createBackingImage:I = 0x1

.field static final TRANSACTION_deleteBackingImage:I = 0x2

.field static final TRANSACTION_getAllBackingImages:I = 0x8

.field static final TRANSACTION_getAvbPublicKey:I = 0x7

.field static final TRANSACTION_getMappedImageDevice:I = 0xd

.field static final TRANSACTION_isImageDisabled:I = 0xc

.field static final TRANSACTION_isImageMapped:I = 0x6

.field static final TRANSACTION_mapImageDevice:I = 0x3

.field static final TRANSACTION_removeAllImages:I = 0xa

.field static final TRANSACTION_removeDisabledImages:I = 0xb

.field static final TRANSACTION_unmapImageDevice:I = 0x4

.field static final TRANSACTION_zeroFillNewImage:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.gsi.IImageService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IImageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.gsi.IImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/gsi/IImageService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/gsi/IImageService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/gsi/IImageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_32

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xd
    const-string v0, "getMappedImageDevice"

    return-object v0

    :pswitch_8  #0xc
    const-string v0, "isImageDisabled"

    return-object v0

    :pswitch_b  #0xb
    const-string/jumbo v0, "removeDisabledImages"

    return-object v0

    :pswitch_f  #0xa
    const-string/jumbo v0, "removeAllImages"

    return-object v0

    :pswitch_13  #0x9
    const-string/jumbo v0, "zeroFillNewImage"

    return-object v0

    :pswitch_17  #0x8
    const-string v0, "getAllBackingImages"

    return-object v0

    :pswitch_1a  #0x7
    const-string v0, "getAvbPublicKey"

    return-object v0

    :pswitch_1d  #0x6
    const-string v0, "isImageMapped"

    return-object v0

    :pswitch_20  #0x5
    const-string v0, "backingImageExists"

    return-object v0

    :pswitch_23  #0x4
    const-string/jumbo v0, "unmapImageDevice"

    return-object v0

    :pswitch_27  #0x3
    const-string/jumbo v0, "mapImageDevice"

    return-object v0

    :pswitch_2b  #0x2
    const-string v0, "deleteBackingImage"

    return-object v0

    :pswitch_2e  #0x1
    const-string v0, "createBackingImage"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_2b  #00000002
        :pswitch_27  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_1d  #00000006
        :pswitch_1a  #00000007
        :pswitch_17  #00000008
        :pswitch_13  #00000009
        :pswitch_f  #0000000a
        :pswitch_b  #0000000b
        :pswitch_8  #0000000c
        :pswitch_5  #0000000d
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/gsi/IImageService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.gsi.IImageService"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    :cond_16
    move-object/from16 v11, p2

    :goto_18
    packed-switch v7, :pswitch_data_118

    packed-switch v7, :pswitch_data_11e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_27  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_117

    :pswitch_3a  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->isImageDisabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_117

    :pswitch_4d  #0xb
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->removeDisabledImages()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_117

    :pswitch_55  #0xa
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->removeAllImages()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_117

    :pswitch_5d  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/gsi/IImageService$Stub;->zeroFillNewImage(Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_117

    :pswitch_70  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/gsi/IImageService$Stub;->getAllBackingImages()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_117

    :pswitch_7c  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/gsi/AvbPublicKey;

    invoke-direct {v1}, Landroid/gsi/AvbPublicKey;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/gsi/IImageService$Stub;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_117

    :pswitch_97  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->isImageMapped(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_117

    :pswitch_aa  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->backingImageExists(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_117

    :pswitch_bc  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->unmapImageDevice(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_117

    :pswitch_ca  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/gsi/MappedImage;

    invoke-direct {v2}, Landroid/gsi/MappedImage;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/gsi/IImageService$Stub;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_117

    :pswitch_e4  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/gsi/IImageService$Stub;->deleteBackingImage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_117

    :pswitch_f2  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/gsi/IImageService$Stub;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_117
    return v10

    :pswitch_data_118
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_f2  #00000001
        :pswitch_e4  #00000002
        :pswitch_ca  #00000003
        :pswitch_bc  #00000004
        :pswitch_aa  #00000005
        :pswitch_97  #00000006
        :pswitch_7c  #00000007
        :pswitch_70  #00000008
        :pswitch_5d  #00000009
        :pswitch_55  #0000000a
        :pswitch_4d  #0000000b
        :pswitch_3a  #0000000c
        :pswitch_27  #0000000d
    .end packed-switch
.end method
