# classes.dex

.class public final Landroid/app/smartspace/SmartspaceTargetEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceTargetEvent$Builder;,
        Landroid/app/smartspace/SmartspaceTargetEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/SmartspaceTargetEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_TARGET_BLOCK:I = 0x5

.field public static final EVENT_TARGET_DISMISS:I = 0x4

.field public static final EVENT_TARGET_HIDDEN:I = 0x3

.field public static final EVENT_TARGET_INTERACTION:I = 0x1

.field public static final EVENT_TARGET_SHOWN:I = 0x2

.field public static final EVENT_UI_SURFACE_HIDDEN:I = 0x7

.field public static final EVENT_UI_SURFACE_SHOWN:I = 0x6


# instance fields
.field private final mEventType:I

.field private final mSmartspaceActionId:Ljava/lang/String;

.field private final mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/smartspace/SmartspaceTarget;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    iput-object p2, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    iput p3, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/smartspace/SmartspaceTarget;Ljava/lang/String;ILandroid/app/smartspace/SmartspaceTargetEvent-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/smartspace/SmartspaceTargetEvent;-><init>(Landroid/app/smartspace/SmartspaceTarget;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/app/smartspace/SmartspaceTarget;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/smartspace/SmartspaceTargetEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    return v0
.end method

.method public getSmartspaceActionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartspaceTarget()Landroid/app/smartspace/SmartspaceTarget;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceTargetEvent{mSmartspaceTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmartspaceActionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
