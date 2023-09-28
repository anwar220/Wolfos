# classes4.dex

.class public final Landroid/window/TaskFragmentCreationParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mFragmentToken:Landroid/os/IBinder;

.field private final mInitialBounds:Landroid/graphics/Rect;

.field private mKeepPosition:Z

.field private final mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private final mOwnerToken:Landroid/os/IBinder;

.field private mScale:F

.field private mWindowingMode:I


# direct methods
.method public constructor <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mScale:F

    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public build()Landroid/window/TaskFragmentCreationParams;
    .registers 6

    new-instance v0, Landroid/window/TaskFragmentCreationParams;

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iget-object v2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/TaskFragmentCreationParams-IA;)V

    invoke-static {v0}, Landroid/window/TaskFragmentCreationParams;->-$$Nest$fgetmInitialBounds(Landroid/window/TaskFragmentCreationParams;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    invoke-static {v0, v1}, Landroid/window/TaskFragmentCreationParams;->-$$Nest$fputmWindowingMode(Landroid/window/TaskFragmentCreationParams;I)V

    iget-boolean v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mKeepPosition:Z

    invoke-static {v0, v1}, Landroid/window/TaskFragmentCreationParams;->-$$Nest$fputmKeepPosition(Landroid/window/TaskFragmentCreationParams;Z)V

    iget v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mScale:F

    invoke-static {v0, v1}, Landroid/window/TaskFragmentCreationParams;->-$$Nest$fputmScale(Landroid/window/TaskFragmentCreationParams;F)V

    return-object v0
.end method

.method public setInitialBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 3

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setKeepPosition(Z)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mKeepPosition:Z

    return-object p0
.end method

.method public setScale(F)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mScale:F

    return-object p0
.end method

.method public setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    return-object p0
.end method
