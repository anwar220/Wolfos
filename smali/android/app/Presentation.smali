# classes.dex

.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;


# static fields
.field private static final TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleDisplayChanged(Landroid/app/Presentation;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDisplayRemoved(Landroid/app/Presentation;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;II)V
    .registers 9

    invoke-static {p1, p2, p3, p4}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "Presentation must be constructed on a looper thread."

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/Presentation$1;

    invoke-direct {v0, p0}, Landroid/app/Presentation$1;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v3, 0x77

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    invoke-static {p4, p2}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0, v1}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;
    .registers 9

    if-eqz p0, :cond_33

    if-eqz p1, :cond_2b

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, p1}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_25

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103c0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    :cond_25
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outerContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getWindowType(ILandroid/view/Display;)I
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    const/16 v0, 0x7ee

    goto :goto_11

    :cond_f
    const/16 v0, 0x7f5

    :goto_11
    return v0
.end method

.method private handleDisplayChanged()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    return-void
.end method

.method private handleDisplayRemoved()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    return-void
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayChanged()V
    .registers 1

    return-void
.end method

.method public onDisplayRemoved()V
    .registers 1

    return-void
.end method

.method protected onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public show()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
