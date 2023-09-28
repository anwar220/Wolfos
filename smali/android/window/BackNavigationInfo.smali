# classes4.dex

.class public final Landroid/window/BackNavigationInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackNavigationInfo$Builder;,
        Landroid/window/BackNavigationInfo$BackTargetType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackNavigationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_TRIGGER_BACK:Ljava/lang/String; = "TriggerBack"

.field public static final TYPE_CALLBACK:I = 0x4

.field public static final TYPE_CROSS_ACTIVITY:I = 0x2

.field public static final TYPE_CROSS_TASK:I = 0x3

.field public static final TYPE_DIALOG_CLOSE:I = 0x0

.field public static final TYPE_RETURN_TO_HOME:I = 0x1

.field public static final TYPE_UNDEFINED:I = -0x1


# instance fields
.field private final mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field private final mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private final mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

.field private final mScreenshotSurface:Landroid/view/SurfaceControl;

.field private final mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/BackNavigationInfo$1;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$1;-><init>()V

    sput-object v0, Landroid/window/BackNavigationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/app/WindowConfiguration;Landroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/BackNavigationInfo;->mType:I

    iput-object p2, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    iput-object p4, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    iput-object p5, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    iput-object p6, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    iput-object p7, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    sget-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WindowConfiguration;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/BackNavigationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/BackNavigationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x4
    const-string v0, "TYPE_CALLBACK"

    return-object v0

    :pswitch_b  #0x3
    const-string v0, "TYPE_CROSS_TASK"

    return-object v0

    :pswitch_e  #0x2
    const-string v0, "TYPE_CROSS_ACTIVITY"

    return-object v0

    :pswitch_11  #0x1
    const-string v0, "TYPE_RETURN_TO_HOME"

    return-object v0

    :pswitch_14  #0x0
    const-string v0, "TYPE_DIALOG_CLOSE"

    return-object v0

    :pswitch_17  #0xffffffff
    const-string v0, "TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_17  #ffffffff
        :pswitch_14  #00000000
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
        :pswitch_8  #00000004
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 2

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;
    .registers 2

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public getScreenshotHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public getScreenshotSurface()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getTaskWindowConfiguration()Landroid/app/WindowConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    return v0
.end method

.method public onBackNavigationFinished(Z)V
    .registers 4

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TriggerBack"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackNavigationInfo{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-static {v1}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mDepartingAnimationTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenshotSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTaskWindowConfiguration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenshotBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnBackNavigationDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnBackInvokedCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method
