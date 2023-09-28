# classes3.dex

.class public final Landroid/provider/ContactsContract$SimAccount;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimAccount"
.end annotation


# static fields
.field public static final ADN_EF_TYPE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/ContactsContract$SimAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final FDN_EF_TYPE:I = 0x2

.field public static final SDN_EF_TYPE:I = 0x3

.field public static final UNKNOWN_EF_TYPE:I


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mEfType:I

.field private final mSimSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/provider/ContactsContract$SimAccount$1;

    invoke-direct {v0}, Landroid/provider/ContactsContract$SimAccount$1;-><init>()V

    sput-object v0, Landroid/provider/ContactsContract$SimAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    iput-object p2, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    iput p3, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    iput p4, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    return-void
.end method

.method public static getValidEfTypes()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    :try_start_8
    move-object v2, p1

    check-cast v2, Landroid/provider/ContactsContract$SimAccount;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_30

    nop

    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    iget v4, v2, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    iget v4, v2, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    nop

    :goto_2f
    return v0

    :catch_30
    move-exception v1

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getEfType()I
    .registers 2

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    return v0
.end method

.method public getSimSlotIndex()I
    .registers 2

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
