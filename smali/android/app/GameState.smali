# classes.dex

.class public final Landroid/app/GameState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameState$GameStateMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/GameState;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_CONTENT:I = 0x4

.field public static final MODE_GAMEPLAY_INTERRUPTIBLE:I = 0x2

.field public static final MODE_GAMEPLAY_UNINTERRUPTIBLE:I = 0x3

.field public static final MODE_NONE:I = 0x1

.field public static final MODE_UNKNOWN:I


# instance fields
.field private final mIsLoading:Z

.field private final mLabel:I

.field private final mMode:I

.field private final mQuality:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/GameState$1;

    invoke-direct {v0}, Landroid/app/GameState$1;-><init>()V

    sput-object v0, Landroid/app/GameState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/GameState;->mIsLoading:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameState;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameState;->mLabel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameState;->mQuality:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/GameState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/GameState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/GameState;-><init>(ZIII)V

    return-void
.end method

.method public constructor <init>(ZIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/GameState;->mIsLoading:Z

    iput p2, p0, Landroid/app/GameState;->mMode:I

    iput p3, p0, Landroid/app/GameState;->mLabel:I

    iput p4, p0, Landroid/app/GameState;->mQuality:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()I
    .registers 2

    iget v0, p0, Landroid/app/GameState;->mLabel:I

    return v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/app/GameState;->mMode:I

    return v0
.end method

.method public getQuality()I
    .registers 2

    iget v0, p0, Landroid/app/GameState;->mQuality:I

    return v0
.end method

.method public isLoading()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/GameState;->mIsLoading:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/app/GameState;->mIsLoading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/GameState;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/GameState;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/GameState;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
