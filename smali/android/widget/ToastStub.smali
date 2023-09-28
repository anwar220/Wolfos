# classes4.dex

.class public interface abstract Landroid/widget/ToastStub;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "ToastStub"


# direct methods
.method public static get()Landroid/widget/ToastStub;
    .registers 1

    const-class v0, Landroid/widget/ToastStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToastStub;

    return-object v0
.end method


# virtual methods
.method public abstract addAppName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public init()V
    .registers 3

    const-string v0, "ToastStub"

    const-string v1, "Init ToastStub"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
