# classes4.dex

.class public interface abstract Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;
    .registers 1

    const-class v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;

    return-object v0
.end method


# virtual methods
.method public varargs abstract invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
