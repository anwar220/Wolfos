# classes3.dex

.class public final synthetic Landroid/os/PackageTagsList$Builder$$ExternalSyntheticLambda0;
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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/os/PackageTagsList$Builder;->lambda$add$0(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    return-object p1
.end method
