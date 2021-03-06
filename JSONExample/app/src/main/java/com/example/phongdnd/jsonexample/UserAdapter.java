package com.example.phongdnd.jsonexample;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.example.phongdnd.jsonexample.model.User;
import com.squareup.picasso.Picasso;

import java.util.List;

public class UserAdapter extends RecyclerView.Adapter<UserAdapter.UserItemViewHolder> {
    private List<User> users;
    private Context context;

    public UserAdapter(List<User> users, Context c) {
        this.users = users;
        this.context = c;
    }

    @Override
    public int getItemCount() {
        return users.size();
    }

    @Override
    public UserItemViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.item_user, parent, false);

        return new UserItemViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(UserItemViewHolder holder, int position) {
        User u = users.get(position);
        /*
        Picasso.with(context)
                .load(u.avatar_url)
                .into(holder.ivAvatar);*/
        holder.Id.setText(u.getUSERNAME());
        holder.Hoten.setText(String.valueOf(u.getHOTEN()));
        holder.Sdt.setText(String.valueOf(u.getSDT()));
        holder.Ngaysinh.setText(String.valueOf(u.getNGAYSINH()));

    }

    public static class UserItemViewHolder extends RecyclerView.ViewHolder {
        public TextView Id;
        public TextView Hoten;
        public TextView Sdt;
        public TextView Ngaysinh;

        public UserItemViewHolder(View itemView) {
            super(itemView);
            Id = (TextView) itemView.findViewById(R.id.id);
            Hoten = (TextView) itemView.findViewById(R.id.hoten);
            Sdt = (TextView) itemView.findViewById(R.id.dt);
            Ngaysinh=(TextView) itemView.findViewById(R.id.ngaysinh);
        }
    }
}