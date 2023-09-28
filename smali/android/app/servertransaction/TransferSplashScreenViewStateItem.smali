# classes.dex

.class public Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/TransferSplashScreenViewStateItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

.field private mStartingWindowLeash:Landroid/view/SurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    sget-object v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/TransferSplashScreenViewStateItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
    .registers 4

    const-class v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    if-nez v0, :cond_10

    new-instance v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    invoke-direct {v1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>()V

    move-object v0, v1

    :cond_10
    iput-object p0, v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iput-object p1, v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 6

    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/ClientTransactionHandler;->handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public recycle()V
    .registers 1

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
