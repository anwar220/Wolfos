# classes3.dex

.class public final synthetic Landroid/view/ViewDebug$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/view/ViewDebug;->lambda$convertToPropertyInfos$9(I)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object p1

    return-object p1
.end method
