# classes3.dex

.class public abstract Landroid/view/SurfaceControl$OnJankDataListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnJankDataListener"
.end annotation


# instance fields
.field private final mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl$OnJankDataListener;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {p0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListener;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void
.end method


# virtual methods
.method public abstract onJankDataAvailable([Landroid/view/SurfaceControl$JankData;)V
.end method
