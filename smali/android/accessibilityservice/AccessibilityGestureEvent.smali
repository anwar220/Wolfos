# classes.dex

.class public final Landroid/accessibilityservice/AccessibilityGestureEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityGestureEvent$GestureId;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityGestureEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayId:I

.field private final mGestureId:I

.field private mMotionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityGestureEvent$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    iput p1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    iput p2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/accessibilityservice/AccessibilityGestureEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static gestureIdToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_98

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x2d
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_b  #0x2c
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_e  #0x2b
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_11  #0x2a
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_14  #0x29
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_17  #0x28
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_1a  #0x27
    const-string v0, "GESTURE_4_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_1d  #0x26
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_20  #0x25
    const-string v0, "GESTURE_4_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_23  #0x24
    const-string v0, "GESTURE_4_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_26  #0x23
    const-string v0, "GESTURE_4_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_29  #0x22
    const-string v0, "GESTURE_4_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_2c  #0x21
    const-string v0, "GESTURE_4_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_2f  #0x20
    const-string v0, "GESTURE_3_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_32  #0x1f
    const-string v0, "GESTURE_3_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_35  #0x1e
    const-string v0, "GESTURE_3_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_38  #0x1d
    const-string v0, "GESTURE_3_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_3b  #0x1c
    const-string v0, "GESTURE_2_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_3e  #0x1b
    const-string v0, "GESTURE_2_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_41  #0x1a
    const-string v0, "GESTURE_2_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_44  #0x19
    const-string v0, "GESTURE_2_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_47  #0x18
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_4a  #0x17
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_4d  #0x16
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_50  #0x15
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_53  #0x14
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_56  #0x13
    const-string v0, "GESTURE_2_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_59  #0x12
    const-string v0, "GESTURE_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_5c  #0x11
    const-string v0, "GESTURE_DOUBLE_TAP"

    return-object v0

    :pswitch_5f  #0x10
    const-string v0, "GESTURE_SWIPE_DOWN_AND_RIGHT"

    return-object v0

    :pswitch_62  #0xf
    const-string v0, "GESTURE_SWIPE_DOWN_AND_LEFT"

    return-object v0

    :pswitch_65  #0xe
    const-string v0, "GESTURE_SWIPE_UP_AND_RIGHT"

    return-object v0

    :pswitch_68  #0xd
    const-string v0, "GESTURE_SWIPE_UP_AND_LEFT"

    return-object v0

    :pswitch_6b  #0xc
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_DOWN"

    return-object v0

    :pswitch_6e  #0xb
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_UP"

    return-object v0

    :pswitch_71  #0xa
    const-string v0, "GESTURE_SWIPE_LEFT_AND_DOWN"

    return-object v0

    :pswitch_74  #0x9
    const-string v0, "GESTURE_SWIPE_LEFT_AND_UP"

    return-object v0

    :pswitch_77  #0x8
    const-string v0, "GESTURE_SWIPE_DOWN_AND_UP"

    return-object v0

    :pswitch_7a  #0x7
    const-string v0, "GESTURE_SWIPE_UP_AND_DOWN"

    return-object v0

    :pswitch_7d  #0x6
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_LEFT"

    return-object v0

    :pswitch_80  #0x5
    const-string v0, "GESTURE_SWIPE_LEFT_AND_RIGHT"

    return-object v0

    :pswitch_83  #0x4
    const-string v0, "GESTURE_SWIPE_RIGHT"

    return-object v0

    :pswitch_86  #0x3
    const-string v0, "GESTURE_SWIPE_LEFT"

    return-object v0

    :pswitch_89  #0x2
    const-string v0, "GESTURE_SWIPE_DOWN"

    return-object v0

    :pswitch_8c  #0x1
    const-string v0, "GESTURE_SWIPE_UP"

    return-object v0

    :pswitch_8f  #0x0
    const-string v0, "GESTURE_UNKNOWN"

    return-object v0

    :pswitch_92  #0xffffffff
    const-string v0, "GESTURE_PASSTHROUGH"

    return-object v0

    :pswitch_95  #0xfffffffe
    const-string v0, "GESTURE_TOUCH_EXPLORATION"

    return-object v0

    :pswitch_data_98
    .packed-switch -0x2
        :pswitch_95  #fffffffe
        :pswitch_92  #ffffffff
        :pswitch_8f  #00000000
        :pswitch_8c  #00000001
        :pswitch_89  #00000002
        :pswitch_86  #00000003
        :pswitch_83  #00000004
        :pswitch_80  #00000005
        :pswitch_7d  #00000006
        :pswitch_7a  #00000007
        :pswitch_77  #00000008
        :pswitch_74  #00000009
        :pswitch_71  #0000000a
        :pswitch_6e  #0000000b
        :pswitch_6b  #0000000c
        :pswitch_68  #0000000d
        :pswitch_65  #0000000e
        :pswitch_62  #0000000f
        :pswitch_5f  #00000010
        :pswitch_5c  #00000011
        :pswitch_59  #00000012
        :pswitch_56  #00000013
        :pswitch_53  #00000014
        :pswitch_50  #00000015
        :pswitch_4d  #00000016
        :pswitch_4a  #00000017
        :pswitch_47  #00000018
        :pswitch_44  #00000019
        :pswitch_41  #0000001a
        :pswitch_3e  #0000001b
        :pswitch_3b  #0000001c
        :pswitch_38  #0000001d
        :pswitch_35  #0000001e
        :pswitch_32  #0000001f
        :pswitch_2f  #00000020
        :pswitch_2c  #00000021
        :pswitch_29  #00000022
        :pswitch_26  #00000023
        :pswitch_23  #00000024
        :pswitch_20  #00000025
        :pswitch_1d  #00000026
        :pswitch_1a  #00000027
        :pswitch_17  #00000028
        :pswitch_14  #00000029
        :pswitch_11  #0000002a
        :pswitch_e  #0000002b
        :pswitch_b  #0000002c
        :pswitch_8  #0000002d
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    return v0
.end method

.method public getGestureId()I
    .registers 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    return v0
.end method

.method public getMotionEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityGestureEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "gestureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "displayId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Motion Events: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_2f
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_58
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_60
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
