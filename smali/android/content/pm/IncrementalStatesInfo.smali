# classes.dex

.class public Landroid/content/pm/IncrementalStatesInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/IncrementalStatesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsLoading:Z

.field private mProgress:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/IncrementalStatesInfo$1;

    invoke-direct {v0}, Landroid/content/pm/IncrementalStatesInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/IncrementalStatesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/IncrementalStatesInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/IncrementalStatesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    iput p2, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()F
    .registers 2

    iget v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    return v0
.end method

.method public isLoading()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
