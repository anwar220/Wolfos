# classes4.dex

.class Lcom/android/modules/utils/BaseParceledListSlice$1;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/modules/utils/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/modules/utils/BaseParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/android/modules/utils/BaseParceledListSlice;ILjava/lang/Class;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    iput p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    const-string v3, " of "

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing more @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    iget v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    if-ge v1, v2, :cond_9b

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetMAX_IPC_SIZE()I

    move-result v4

    if-ge v2, v4, :cond_9b

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    invoke-static {v2}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$fgetmList(Lcom/android/modules/utils/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    iget v5, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v4, v2, p3, v5}, Lcom/android/modules/utils/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote extra #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    invoke-static {v6}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$fgetmList(Lcom/android/modules/utils/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_9b
    iget v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    if-ge v1, v2, :cond_cd

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Breaking @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_cd
    return v0
.end method
