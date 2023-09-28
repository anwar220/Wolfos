# classes.dex

.class public Landroid/app/ApplicationStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/app/ApplicationStub;
    .registers 1

    const-class v0, Landroid/app/ApplicationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationStub;

    return-object v0
.end method


# virtual methods
.method onCreate(Landroid/app/Application;)V
    .registers 2

    return-void
.end method
