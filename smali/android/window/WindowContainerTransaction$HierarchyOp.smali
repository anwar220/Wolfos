# classes4.dex

.class public final Landroid/window/WindowContainerTransaction$HierarchyOp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HierarchyOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIERARCHY_OP_TYPE_ADD_RECT_INSETS_PROVIDER:I = 0x10

.field public static final HIERARCHY_OP_TYPE_CHILDREN_TASKS_REPARENT:I = 0x2

.field public static final HIERARCHY_OP_TYPE_CREATE_TASK_FRAGMENT:I = 0x7

.field public static final HIERARCHY_OP_TYPE_DELETE_TASK_FRAGMENT:I = 0x8

.field public static final HIERARCHY_OP_TYPE_LAUNCH_TASK:I = 0x5

.field public static final HIERARCHY_OP_TYPE_PENDING_INTENT:I = 0xc

.field public static final HIERARCHY_OP_TYPE_REMOVE_INSETS_PROVIDER:I = 0x11

.field public static final HIERARCHY_OP_TYPE_REORDER:I = 0x1

.field public static final HIERARCHY_OP_TYPE_REPARENT:I = 0x0

.field public static final HIERARCHY_OP_TYPE_REPARENT_ACTIVITY_TO_TASK_FRAGMENT:I = 0xa

.field public static final HIERARCHY_OP_TYPE_REPARENT_CHILDREN:I = 0xb

.field public static final HIERARCHY_OP_TYPE_REQUEST_FOCUS_ON_TASK_FRAGMENT:I = 0x12

.field public static final HIERARCHY_OP_TYPE_RESTORE_TRANSIENT_ORDER:I = 0xf

.field public static final HIERARCHY_OP_TYPE_SET_ADJACENT_ROOTS:I = 0x4

.field public static final HIERARCHY_OP_TYPE_SET_ADJACENT_TASK_FRAGMENTS:I = 0xd

.field public static final HIERARCHY_OP_TYPE_SET_LAUNCH_ADJACENT_FLAG_ROOT:I = 0x6

.field public static final HIERARCHY_OP_TYPE_SET_LAUNCH_ROOT:I = 0x3

.field public static final HIERARCHY_OP_TYPE_START_ACTIVITY_IN_TASK_FRAGMENT:I = 0x9

.field public static final HIERARCHY_OP_TYPE_START_SHORTCUT:I = 0xe

.field public static final LAUNCH_KEY_SHORTCUT_CALLING_PACKAGE:Ljava/lang/String; = "android:transaction.hop.shortcut_calling_package"

.field public static final LAUNCH_KEY_TASK_ID:Ljava/lang/String; = "android:transaction.hop.taskId"


# instance fields
.field private mActivityIntent:Landroid/content/Intent;

.field private mActivityTypes:[I

.field private mContainer:Landroid/os/IBinder;

.field private mInsetsProviderFrame:Landroid/graphics/Rect;

.field private mInsetsTypes:[I

.field private mLaunchOptions:Landroid/os/Bundle;

.field private mMoveAdjacentTogether:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mReparent:Landroid/os/IBinder;

.field private mReparentTopOnly:Z

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

.field private mToTop:Z

.field private final mType:I

.field private mWindowingModes:[I


# direct methods
.method static bridge synthetic -$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInsetsProviderFrame(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMoveAdjacentTogether(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTaskFragmentCreationOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentCreationParams;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/window/WindowContainerTransaction$HierarchyOp-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    goto :goto_2f

    :cond_2c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    :goto_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    sget-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentCreationParams;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public constructor <init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public static createForAdjacentRoots(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setMoveAdjacentTogether(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    return-object v0
.end method

.method public static createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 8

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    return-object v0
.end method

.method public static createForReorder(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    return-object v0
.end method

.method public static createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    return-object v0
.end method

.method public static createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    return-object v0
.end method

.method public static createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    return-object v0
.end method

.method public static createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 6

    if-nez p2, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p2

    :goto_9
    const-string v1, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    return-object v1
.end method

.method public static createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    const-string v1, "android:transaction.hop.taskId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getActivityTypes()[I
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-object v0
.end method

.method public getAdjacentRoot()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCallingActivity()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public getContainer()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInsetsProviderFrame()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsetsTypes()[I
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    return-object v0
.end method

.method public getLaunchOptions()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMoveAdjacentTogether()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    return v0
.end method

.method public getNewParent()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getReparentTopOnly()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public getTaskFragmentCreationOptions()Landroid/window/TaskFragmentCreationParams;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    return-object v0
.end method

.method public getToTop()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    return v0
.end method

.method public getWindowingModes()[I
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-object v0
.end method

.method public isReparent()Z
    .registers 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    const-string v1, " insetsType="

    const-string v2, " mToTop="

    const-string v3, " to "

    const-string v4, " mActivityType="

    const-string v5, " mWindowingMode="

    const-string/jumbo v6, "}"

    packed-switch v0, :pswitch_data_34e

    :pswitch_12  #0xc, 0xf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reparent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6b  #0x12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{requestFocusOnTaskFragment: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_86  #0x11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{removeLocalInsetsProvider: container="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_af  #0x10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{addRectInsetsProvider: container="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " insetsProvidingFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_e4  #0xe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StartShortcut: options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_10b  #0xd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetAdjacentTaskFragments: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adjacentContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_132  #0xb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ReparentChildren: oldParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_159  #0xa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ReparentActivityToTaskFragment: fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_180  #0x9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StartActivityInTaskFragment: fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1b3  #0x8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{DeleteTaskFragment: taskFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1ce  #0x7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{CreateTaskFragment: options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1e9  #0x6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetAdjacentFlagRoot: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clearRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_210  #0x5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{LaunchTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_22b  #0x4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetAdjacentRoot: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adjacentRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMoveAdjacentTogether="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_25e  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetLaunchRoot: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_295  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ChildrenTasksReparent: from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReparentTopOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2ee  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{reorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v1, :cond_30c

    const-string/jumbo v1, "top"

    goto :goto_30e

    :cond_30c
    const-string v1, "bottom"

    :goto_30e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_31b  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{reparent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v1, :cond_339

    const-string/jumbo v1, "top of "

    goto :goto_33b

    :cond_339
    const-string v1, "bottom of "

    :goto_33b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_34e
    .packed-switch 0x0
        :pswitch_31b  #00000000
        :pswitch_2ee  #00000001
        :pswitch_295  #00000002
        :pswitch_25e  #00000003
        :pswitch_22b  #00000004
        :pswitch_210  #00000005
        :pswitch_1e9  #00000006
        :pswitch_1ce  #00000007
        :pswitch_1b3  #00000008
        :pswitch_180  #00000009
        :pswitch_159  #0000000a
        :pswitch_132  #0000000b
        :pswitch_12  #0000000c
        :pswitch_10b  #0000000d
        :pswitch_e4  #0000000e
        :pswitch_12  #0000000f
        :pswitch_af  #00000010
        :pswitch_86  #00000011
        :pswitch_6b  #00000012
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
