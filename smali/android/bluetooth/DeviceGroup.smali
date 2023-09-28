# classes.dex

.class public final Landroid/bluetooth/DeviceGroup;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/DeviceGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExclusiveAccessSupport:Z

.field private mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupId:I

.field private final mIncludingSrvcUUID:Landroid/os/ParcelUuid;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/DeviceGroup$1;

    invoke-direct {v0}, Landroid/bluetooth/DeviceGroup$1;-><init>()V

    sput-object v0, Landroid/bluetooth/DeviceGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Landroid/os/ParcelUuid;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p1, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    iput p2, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p4, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    iput-boolean p5, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceGroupId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    return v0
.end method

.method public getDeviceGroupMembers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getDeviceGroupSize()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    return v0
.end method

.method public getIncludingServiceUUID()Landroid/os/ParcelUuid;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getTotalDiscoveredGroupDevices()I
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isExclusiveAccessSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    return v0
.end method

.method public isGroupDiscoveredCompleted()Z
    .registers 3

    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    invoke-virtual {p0}, Landroid/bluetooth/DeviceGroup;->getTotalDiscoveredGroupDevices()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
