# classes.dex

.class public Landroid/bluetooth/SdpDipRecord;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mPrimaryRecord:Z

.field private final mProductId:I

.field private final mSpecificationId:I

.field private final mVendorId:I

.field private final mVendorIdSource:I

.field private final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/SdpDipRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpDipRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpDipRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    iput p2, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    iput p3, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    iput p4, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    iput p5, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    iput-boolean p6, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryRecord()Z
    .registers 2

    iget-boolean v0, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    return v0
.end method

.method public getProductId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    return v0
.end method

.method public getSpecificationId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    return v0
.end method

.method public getVendorIdSource()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
