# classes4.dex

.class public Landroid/window/WindowOnBackInvokedDispatcher$Checker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# instance fields
.field private final mApplicationCallBackEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mApplicationCallBackEnabled:Z

    return-void
.end method


# virtual methods
.method public checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z
    .registers 6

    iget-boolean v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mApplicationCallBackEnabled:Z

    if-nez v0, :cond_11

    instance-of v0, p2, Landroid/window/CompatOnBackInvokedCallback;

    if-nez v0, :cond_11

    const-string v0, "OnBackInvokedCallback"

    const-string v1, "OnBackInvokedCallback is not enabled for the application.\nSet \'android:enableOnBackInvokedCallback=\"true\"\' in the application manifest."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_11
    if-ltz p1, :cond_18

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application registered OnBackInvokedCallback cannot have negative priority. Priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
