# classes4.dex

.class public interface abstract Lcom/android/internal/app/LocalePickerStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lcom/android/internal/app/LocalePickerStub;
    .registers 1

    const-class v0, Lcom/android/internal/app/LocalePickerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePickerStub;

    return-object v0
.end method


# virtual methods
.method public abstract addLocaleLanguages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V
.end method
