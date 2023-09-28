# classes.dex

.class Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeValueEntry"
.end annotation


# instance fields
.field private final mType:I

.field private final mValue:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mType:I

    iput-object p2, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mValue:[B

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mType:I

    return v0
.end method

.method public getValue()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mValue:[B

    return-object v0
.end method
