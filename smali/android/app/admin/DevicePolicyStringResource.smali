# classes.dex

.class public final Landroid/app/admin/DevicePolicyStringResource;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResource:Landroid/app/admin/ParcelableResource;

.field private final mResourceIdInCallingPackage:I

.field private final mStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/DevicePolicyStringResource$1;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyStringResource$1;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyStringResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/app/admin/ParcelableResource;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p3, v1}, Landroid/app/admin/ParcelableResource;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, p2, p3, v0}, Landroid/app/admin/DevicePolicyStringResource;-><init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "stringId must be provided."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ParcelableResource must be provided."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    iput p2, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    iput-object p3, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;Landroid/app/admin/DevicePolicyStringResource-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyStringResource;-><init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/DevicePolicyStringResource;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    iget v4, v2, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    invoke-virtual {v3, v4}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getResource()Landroid/app/admin/ParcelableResource;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    return-object v0
.end method

.method public getResourceIdInCallingPackage()I
    .registers 2

    iget v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
