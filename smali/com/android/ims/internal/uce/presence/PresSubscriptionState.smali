# classes4.dex

.class public Lcom/android/ims/internal/uce/presence/PresSubscriptionState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_PRES_SUBSCRIPTION_STATE_ACTIVE:I = 0x0

.field public static final UCE_PRES_SUBSCRIPTION_STATE_PENDING:I = 0x1

.field public static final UCE_PRES_SUBSCRIPTION_STATE_TERMINATED:I = 0x2

.field public static final UCE_PRES_SUBSCRIPTION_STATE_UNKNOWN:I = 0x3


# instance fields
.field private mPresSubscriptionState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSubscriptionState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPresSubscriptionStateValue()I
    .registers 2

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    return-void
.end method

.method public setPresSubscriptionState(I)V
    .registers 2

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method