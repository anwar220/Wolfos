# classes4.dex

.class public final synthetic Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method
