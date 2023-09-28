# classes.dex

.class public Landroid/app/AppOpsManagerStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/AppOpsManagerStub;
    .registers 1

    const-class v0, Landroid/app/AppOpsManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManagerStub;

    return-object v0
.end method


# virtual methods
.method public opToDefaultMode(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
