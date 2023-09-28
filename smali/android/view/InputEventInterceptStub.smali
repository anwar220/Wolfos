# classes3.dex

.class public interface abstract Landroid/view/InputEventInterceptStub;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "InputEventInterceptStub"


# direct methods
.method public static getInstance()Landroid/view/InputEventInterceptStub;
    .registers 1

    const-class v0, Landroid/view/InputEventInterceptStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEventInterceptStub;

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 3

    const-string v0, "InputEventInterceptStub"

    const-string v1, "Can\'t find InputEventInterceptStubImpl"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isOneway(Landroid/view/InputEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract shouldIntercept(Landroid/view/InputEvent;)Z
.end method
