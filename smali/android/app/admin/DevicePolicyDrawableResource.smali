# classes.dex

.class public final Landroid/app/admin/DevicePolicyDrawableResource;
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
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDrawableId:Ljava/lang/String;

.field private final mDrawableSource:Ljava/lang/String;

.field private final mDrawableStyle:Ljava/lang/String;

.field private mResource:Landroid/app/admin/ParcelableResource;

.field private final mResourceIdInCallingPackage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/DevicePolicyDrawableResource$1;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyDrawableResource$1;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyDrawableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const-string v4, "UNDEFINED"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/admin/DevicePolicyDrawableResource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    new-instance v5, Landroid/app/admin/ParcelableResource;

    const/4 v0, 0x1

    invoke-direct {v5, p1, p5, v0}, Landroid/app/admin/ParcelableResource;-><init>(Landroid/content/Context;II)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/admin/DevicePolicyDrawableResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    iput p4, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    iput-object p5, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;Landroid/app/admin/DevicePolicyDrawableResource-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/admin/DevicePolicyDrawableResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

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

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/DevicePolicyDrawableResource;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    iget v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    invoke-virtual {v3, v4}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    :goto_45
    return v0

    :cond_46
    :goto_46
    return v1
.end method

.method public getDrawableId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableStyle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Landroid/app/admin/ParcelableResource;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    return-object v0
.end method

.method public getResourceIdInCallingPackage()I
    .registers 2

    iget v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
