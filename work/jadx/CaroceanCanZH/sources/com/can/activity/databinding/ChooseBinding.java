package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ChooseBinding implements ViewBinding {
    public final Button btnChoose1;
    public final Button btnChoose2;
    public final Button btnChoose3;
    public final Button btnChooseSure;
    public final ImageView imgChooseLine1;
    public final ImageView imgChooseLine2;
    public final RelativeLayout layoutChooseList;
    public final LinearLayout layoutChooseStep;
    public final RelativeLayout layoutChooseTitle;
    public final ListView listCanInfo;
    private final RelativeLayout rootView;
    public final TextView txChoosePro;
    public final TextView txVerInfo;

    private ChooseBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, Button button4, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, LinearLayout linearLayout, RelativeLayout relativeLayout3, ListView listView, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.btnChoose1 = button;
        this.btnChoose2 = button2;
        this.btnChoose3 = button3;
        this.btnChooseSure = button4;
        this.imgChooseLine1 = imageView;
        this.imgChooseLine2 = imageView2;
        this.layoutChooseList = relativeLayout2;
        this.layoutChooseStep = linearLayout;
        this.layoutChooseTitle = relativeLayout3;
        this.listCanInfo = listView;
        this.txChoosePro = textView;
        this.txVerInfo = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ChooseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ChooseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.choose, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ChooseBinding bind(View view) {
        int i = R.id.btn_choose_1;
        Button button = (Button) view.findViewById(R.id.btn_choose_1);
        if (button != null) {
            i = R.id.btn_choose_2;
            Button button2 = (Button) view.findViewById(R.id.btn_choose_2);
            if (button2 != null) {
                i = R.id.btn_choose_3;
                Button button3 = (Button) view.findViewById(R.id.btn_choose_3);
                if (button3 != null) {
                    i = R.id.btn_choose_sure;
                    Button button4 = (Button) view.findViewById(R.id.btn_choose_sure);
                    if (button4 != null) {
                        i = R.id.img_choose_line_1;
                        ImageView imageView = (ImageView) view.findViewById(R.id.img_choose_line_1);
                        if (imageView != null) {
                            i = R.id.img_choose_line_2;
                            ImageView imageView2 = (ImageView) view.findViewById(R.id.img_choose_line_2);
                            if (imageView2 != null) {
                                i = R.id.layout_choose_list;
                                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.layout_choose_list);
                                if (relativeLayout != null) {
                                    i = R.id.layout_choose_step;
                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_choose_step);
                                    if (linearLayout != null) {
                                        i = R.id.layout_choose_title;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.layout_choose_title);
                                        if (relativeLayout2 != null) {
                                            i = R.id.list_can_info;
                                            ListView listView = (ListView) view.findViewById(R.id.list_can_info);
                                            if (listView != null) {
                                                i = R.id.tx_choose_pro;
                                                TextView textView = (TextView) view.findViewById(R.id.tx_choose_pro);
                                                if (textView != null) {
                                                    i = R.id.tx_ver_info;
                                                    TextView textView2 = (TextView) view.findViewById(R.id.tx_ver_info);
                                                    if (textView2 != null) {
                                                        return new ChooseBinding((RelativeLayout) view, button, button2, button3, button4, imageView, imageView2, relativeLayout, linearLayout, relativeLayout2, listView, textView, textView2);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
