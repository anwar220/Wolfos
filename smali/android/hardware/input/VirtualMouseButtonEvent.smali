# classes2.dex

.class public final Landroid/hardware/input/VirtualMouseButtonEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualMouseButtonEvent$Builder;,
        Landroid/hardware/input/VirtualMouseButtonEvent$Button;,
        Landroid/hardware/input/VirtualMouseButtonEvent$Action;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_UNKNOWN:I = -0x1

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final BUTTON_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualMouseButtonEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:I

.field private final mButtonCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseButtonEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    iput p2, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/input/VirtualMouseButtonEvent-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(II)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualMouseButtonEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    return v0
.end method

.method public getButtonCode()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
