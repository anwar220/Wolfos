# classes.dex

.class public final synthetic Landroid/app/admin/SystemUpdatePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/app/admin/FreezePeriod;

    invoke-static {p1}, Landroid/app/admin/SystemUpdatePolicy;->lambda$toString$0(Landroid/app/admin/FreezePeriod;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
