# classes2.dex

.class public final Landroid/hardware/input/VirtualMouseRelativeEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualMouseRelativeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRelativeX:F

.field private final mRelativeY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseRelativeEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    iput p2, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    return-void
.end method

.method synthetic constructor <init>(FFLandroid/hardware/input/VirtualMouseRelativeEvent-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(FF)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualMouseRelativeEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRelativeX()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    return v0
.end method

.method public getRelativeY()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
