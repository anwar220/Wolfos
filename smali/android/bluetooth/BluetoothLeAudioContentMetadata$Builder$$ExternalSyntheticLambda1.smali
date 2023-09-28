# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->lambda$build$1(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z

    move-result p1

    return p1
.end method
