# classes3.dex

.class public interface abstract Landroid/view/InputEventLogStub;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "InputEventLogStub"


# direct methods
.method public static getInstance()Landroid/view/InputEventLogStub;
    .registers 1

    const-class v0, Landroid/view/InputEventLogStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEventLogStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkScoutStateOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
.end method

.method public init()V
    .registers 3

    const-string v0, "InputEventLogStub"

    const-string v1, "Can\'t find InputEventLogStubImpl"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract logOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
.end method
